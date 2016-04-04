#require 'httparty'
require 'net/http'
require 'forecast_io'
require 'openssl'

#Hack: http://stackoverflow.com/questions/170956/how-can-i-find-which-operating-system-my-ruby-program-is-running-on Just testing.
module OS
  def OS.windows?
    (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
  end

  def OS.mac?
   (/darwin/ =~ RUBY_PLATFORM) != nil
  end

  def OS.unix?
    !OS.windows?
  end

  def OS.linux?
    OS.unix? and not OS.mac?
  end
end
#This is evil, don't remove the OS check. You'll disable security for tls. I had to do this because it seems that ruby doesn't know how to check ssl cert valitity on windows and needs a root store.
#This disables ssl verification on windows only, and I assume we ship on a unixish platform.
if OS.windows? 
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
end

f = open(".api_key", "r")
api_key = f.readline
ForecastIO.api_key = api_key
f.close
lat=40
long = -105
forecast = ForecastIO.forecast(lat, long, params: { units: 'us' })
cur = forecast.currently
puts "#{cur[:temperature]} degrees and #{cur[:summary]}"

=begin

bananas = "https://api.forecast.io/forecast/#{api_key}/#{lat},#{long}" # don't ask.
response = HTTParty.get(bananas)
puts response.parsed_response
=end