####Who:
Brandon Barrett, Amir Kashipasha, Dilara Madinger, Derek Riemer.

####Title:
Weather Alarm Clock

####Vision:
The Weather Alarm Clock will allow people to be on time, regardless of the weather.

####Automated Tests:
We have Unit and Functional tests for our API written with:
[Minitest](https://github.com/seattlerb/minitest)
and
[Rails Fixtures](http://guides.rubyonrails.org/testing.html#the-low-down-on-fixtures)

Our tests are organized into a directory structure that mirrors our application
directory structure, so our tests are siloed into small, maintainable chunks.

We are also using a rails database configuration that allows us to run our tests
against a separate Test database, which allows us to use and abuse inserts and other
potentialy destructive operations without having to risk harming data that we may
care about.

Tests can be run individually by file via command line with
```ruby
$: bundle exec rake test path/to/file.name
```
The entire test suite can be run with
```ruby
$: bundle exec rake test
```

Our test suite runs in roughly 1.7 seconds with around 2100 assertions.  The
reason for the high number of assertions is that some of our test run with a random number
generation over a large range of values, but since those tests are unit tests
it doesn't add much overhead. In fact, a small handful of tests that involve rest requests
take longer than the thousands of unit tests.

####User Acceptance Tests:
These tests will take place on our Android devices and are broken down into
three main user stories that each constitute a single Acceptance test:
1. User can set read time accurately and set the alarm time.
  - User opens app and sees the accurate time of day and date
  - User can navigate to "view alarm" and sees that either the alarm was properly remembered or that there is no alarm yet
  - User can set an initial alarm, or overwrite the existing alarm
  - After setting the alarm, if the user exits the app and then returns to the app, the alarm that was most recently set will have been properly remembered.

2. Users have effective alarm UI.
  - User has an alarm that has been set.
  - After the alarm has reached the alarm time, it will go off, and it will play an alarm noise.
  - Image behind alarm depicts accurate weather (in this test will be "good weather")
  - User will be able to turn off alarm noise by pressing a "stop" button and have it stay off

3. Users have their alarm altered by weather
  - User has an alarm that has been set.
  - User's alarm is told that the weather will be or will very likely be rainy or snowy around the alarm time.
  - Alarm time is automatically set to go off 15 minutes earlier.
  - Image behind alarm clock depicts bad weather.

We are using UI test with [Espresso](http://developer.android.com/training/testing/ui-testing/espresso-testing.html) in the [JUnit4](http://junit.org/junit4/) style.
To run the test via Gradle: Use the connectedCheck task
in Gradle to run the test directly via Gradle.
