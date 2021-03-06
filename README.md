#Weather Alarm Clock (API)

### Tests
Tests are located in

### Bulding Docs
 - Open Terminal and navigate to the project root
 - running: ```rake doc:app # generates documentation for your application in doc/app.
rake doc:guides # generates Rails guides in doc/guides.
rake doc:rails # generates API documentation for Rails in doc/api.```

### Building project and Running the Application
 - Open Terminal and navigate to the project root
 - Run `bundle exec install`
 - Run `rake db:create` to create database
 - Run `rake db:migrate` to format database tables
 - Get `application.yml` file from a group member.  This isn't tracked because it contains sensitive information such as API keys that shouldn't be public.
 - Run `rake alarm_api:init_cities` to add some popular cities to your local DB
 - Run `rake alarm_api:update_all_forecasts` to add forecast data

### Deployment
  - install heroku toolbelt
  - checkout master branch
  - in the root of the project in terminal run `git push heroku master`
  - if you want to push an alternative branch, use `git push heroku your_branch:master`

### Testing
Tests are located in the `test` folder and can be run with `rake test`

### Team:
Brandon Barrett - ditofry, Andrew Gaines - asgaines, Amir Kashipazha - amirkashi, Dilara Madinger - cudilara, Derek Riemer - derekriemer

### Title:
Weather Alarm Clock

### Description:
An Android app that serves as a customized alarm clock. Depending on the current weather, this alarm clock will ring earlier to give the user time to plan for a slower commute or clean the driveway.

### Vision statement:
The Weather Alarm Clock will allow people to be on time, regardless of the weather.

### Motivation:
We want to develop an app that we would use ourselves. Since many of us commute to school, we would like to have extra time to handle inclement weather, i.e. snow shoveling driveways. This app will also help us to prepare for the day.

### Risks:
Most of our team members did not develop an app, therefore this project presents us with the challenge of learning as we go. Also a few of team members do not have an Android platform to test the app, which will slow the process.

### Mitigation strategy:
There are five team members in our group and this allows for working on separate parts of the project at the same time. We are all avid learners and are excited about creating an app. Our motivation will help with learning new platforms. Currently all of us are actively pursuing acquisition of required hardware.

### Requirements:
ID	Requirements	Time (hour)	Type of Requirements	User Story
01	alarm set/disable	7	user	As a user, I want to set and disable the alarm so that I can control when I wake up.
02	alarm tone	7	user	As a user, I want to set different alarm tones so that I can hear pleasant sounds.
03	find location	2	fucntional	As a developer, I need access to location data so that I can retrieve weather data for the user.
04	track weather	4	fucntional	As a developer, I need to track weather data so that I can wake up the user at appropriate time.
05	specify beahavior dependent upon the weather	7	user	As a user, I would like to specify alarm clock behavior, so that I can be awakened appropriately according to weather conditions.
06	weekend mode	6	user	As a user I would like my alarm clock disabled during the weekend, so that I can sleep in.

### Methodology:
Agile.

### Project Tracking Software:
Trello https://trello.com/b/McxWBv2w/project-ideas and GitHub https://github.com/derekriemer/colorado_alarm

### Project Plan:
alarm set/disable

alarm tone

find location

track weather

specify behavior dependent upon the weather

weekend mode
