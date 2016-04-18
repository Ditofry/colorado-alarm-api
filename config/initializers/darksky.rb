require 'forecast_io'
# could also use ENV['forecast_io_key']
ForecastIO.api_key = Figaro.env.forecast_io_key
