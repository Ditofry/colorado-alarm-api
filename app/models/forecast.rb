require 'forecast_io'

class Forecast < ActiveRecord::Base
validates :zip, presence:true, length: { in: 5..5 }
validates_inclusion_of :lat, allow_nil: true, :in => -90..90
validates_inclusion_of :lng, allow_nil: true, :in => -180..180

  def self.hit(zip)
    keyFile = open(".api_key", "r")
    apiKey = keyFile.readline
    keyFile.close
    ForecastIO.api_key = apiKey

  end
end
