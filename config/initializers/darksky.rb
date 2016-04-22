require 'forecast_io'
require 'openssl' 

#Hack: http://stackoverflow.com/questions/170956/how-can-i-find-which-operating-system-my-ruby-program-is-running-on Just testing.
def isWindows?
  (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
end

if isWindows? then
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
  #that's evil code. It just disables cert verification on my machine since I am windows and windows doesn't work with ruby on ssl (in the amount of time I have to debug this).
end

# could also use ENV['forecast_io_key']
ForecastIO.api_key = Figaro.env.forecast_io_key
