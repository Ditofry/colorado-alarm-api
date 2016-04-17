require 'forecast_io'
require 'openssl' #evil ssl removing hack for windows since windows doesn't have a root store. I am not going to lie, this is sleezy.

#Hack: http://stackoverflow.com/questions/170956/how-can-i-find-which-operating-system-my-ruby-program-is-running-on Just testing.
def isWindows?
  (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
end

if isWindows? then
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
  #that's evil code. It just disables cert verification on my machine since I am windows and windows doesn't work with ruby on ssl (in the amount of time I have to debug this).
end

class Forecast < ActiveRecord::Base
  validates :zip, presence:true, length: { in: 5..5 }
  validates_inclusion_of :lat, allow_nil: true, :in => -90..90
  validates_inclusion_of :lng, allow_nil: true, :in => -180..180
  attr_accessor :forecast #remove or privatize this later if it's evil, I want it for debugging.

  def hit
    if (self.lat.nil? or self.lng.nil?)
      return "error!" #should actually throw an error.
    end

    ForecastIO.api_key = Figaro.env.forecast_io_key # could also use ENV['forecast_io_key']

    self.forecast = ForecastIO.forecast(self.lat, self.lng, params: { units: 'us' })

    if self.forecast.nil?
      return false
    else
      return true
    end
  end

  def getRecords(limit, types)
    <<-DOCUMENTATION
    @Brandon: is this the right way to document methods in rails api's?
    getRecords: gets records from the forecast data.
    @limit: The number of hours of records.
    @types:  list of symbols of  any of [:precip, :icon, :temp]
    DOCUMENTATION
    typeStrs = []
    types.each do |type|
      if type == :precip
        typeStrs.append("precipProbability")
        typeStrs.append("precipType")
      elsif type == :temp
        typeStrs.append("temperature")
      elsif type == :icon #machine readable icons like cloudy. See the api documentation for forecastio api for more details.
        typeStrs.append("icon")
      else
        return "error" #how to raise errors in ruby again?
      end
    end
    hours = @forecast["hourly"]["data"]
    records = [] #array stores hashes with each of the records, and their unit.
    if limit.respond_to?("times")
      limit.times do |x|
        curRecord = {}
        typeStrs.each do |typeName|
          curRecord[typeName] = hours[x][typeName] # hours[x] is a hash and we only need a subset of it.
        end
        records.append curRecord
      end
    end
    return records
  end
end
