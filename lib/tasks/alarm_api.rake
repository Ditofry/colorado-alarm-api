require 'csv'

namespace :alarm_api do
  desc "Add a few popular Colorado Cities to get things started"
  task init_cities: :environment do
    cities = CSV.read("lib/assets/starting-cities.csv").map do |row| # [city, state]
      {name: row[0], state: row[1]}
    end
    City.create(cities)
  end
end
