require 'csv'

# Taks namespace for our specific bulk task runners
namespace :alarm_api do
  desc "Add a few popular Colorado Cities to get things started"
  task init_cities: :environment do
    cities = CSV.read("lib/assets/starting-cities.csv").map do |row| # [city, state]
      {name: row[0], state: row[1]}
    end
    City.create(cities)
  end

  desc "Get new forecasts for all of our cities"
  task update_all_forecasts: :environment do
    error_msg = "Failed to retrieve forcast for city: "
    City.all.each do |city|
      logger.fatal error_msg + city.name unless city.retrieve_forecast
    end
  end
end
