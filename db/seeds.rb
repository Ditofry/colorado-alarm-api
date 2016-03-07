# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Forecast.create([
  {zip: 80033, time: Date.new(2016,3,6).to_s},
  {zip: 80203, time: Date.new(2016,3,6).to_s},
  {zip: 80206, time: Date.new(2016,3,6).to_s},
  {zip: 80026, time: Date.new(2016,3,6).to_s},
  {zip: 80202, time: Date.new(2016,3,6).to_s},
  {zip: 80211, time: Date.new(2016,3,6).to_s},
  {zip: 80210, time: Date.new(2016,3,6).to_s},
  {zip: 80003, time: Date.new(2016,3,6).to_s},
  {zip: 80204, time: Date.new(2016,3,6).to_s},
  {zip: 90210, time: Date.new(2016,3,6).to_s}
])
