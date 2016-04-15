# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

#
# set :output, "/path/to/my/cron_log.log"
#
every 2.hours do
  # command "/usr/bin/some_great_command"
  # runner "MyModel.some_method"
  # rake "some:great:rake:task"
end
