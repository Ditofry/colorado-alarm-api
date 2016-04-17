# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# TODO: Should point this at a cron log
# TODO: configure add-on for this gem: https://elements.heroku.com/addons/scheduler
# set :output, "/path/to/my/cron_log.log"
every 2.hours do
  rake "alarm_api:update_all_forecasts"
end
