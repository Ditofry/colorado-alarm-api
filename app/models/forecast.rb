require 'forecast_io'

class Forecast < ActiveRecord::Base

  def hit(zip)
    keyFile = open(".api_key", "r")
    apiKey = keyFile.readline
    keyFile.close
    ForecastIO.api_key = apiKey
    
  end
end
