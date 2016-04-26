Last login: Tue Apr 26 12:42:07 on ttys002
➜  ~ cd AndroidStudioProjects/colorado_alarm
➜  colorado_alarm git:(master) ✗ ls
AlarmTest          app                colorado_alarm.iml local.properties
➜  colorado_alarm git:(master) ✗ cd ..
➜  AndroidStudioProjects ls
DeviceManager          OpenCVTest             SimpleWeather.amir     SimpleWeather.zip      android-device-manager modules
FirstApplication       SimpleWeather          SimpleWeather.bak      VersionThree           colorado_alarm
➜  AndroidStudioProjects cd SimpleWeather
➜  SimpleWeather git:(alarm-background-jobs) ✗ ls
README.md         app               build.gradle      gradle.properties gradlew.bat       settings.gradle
SimpleWeather.iml build             gradle            gradlew           local.properties  volley
➜  SimpleWeather git:(alarm-background-jobs) ✗ git br
  Dilara
* alarm-background-jobs
  amir
  background-jobs
  master
➜  SimpleWeather git:(alarm-background-jobs) ✗ git status
On branch alarm-background-jobs
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)

	modified:   .idea/misc.xml
	modified:   app/src/main/AndroidManifest.xml
	modified:   app/src/main/java/com/robobrandon/simpleweather/AlarmActivity.java
	modified:   app/src/main/res/layout/activity_main.xml
	modified:   app/src/main/res/layout/alarm_layout.xml
	modified:   volley (untracked content)

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	app/src/main/java/com/robobrandon/simpleweather/RingtonePlayingService.java
	app/src/main/res/drawable/
	app/src/main/res/mipmap-hdpi/sun.jpg
	app/src/main/res/mipmap-xhdpi/sun.jpg
	app/src/main/res/mipmap-xxhdpi/sun.jpg
	app/src/main/res/mipmap-xxxhdpi/sun.jpg

no changes added to commit (use "git add" and/or "git commit -a")
➜  SimpleWeather git:(alarm-background-jobs) ✗ git add .
➜  SimpleWeather git:(alarm-background-jobs) ✗ git ci -am 'demo ready'
[alarm-background-jobs ab5a654] demo ready
 11 files changed, 336 insertions(+), 46 deletions(-)
 create mode 100644 app/src/main/java/com/robobrandon/simpleweather/RingtonePlayingService.java
 create mode 100644 app/src/main/res/drawable/sun.jpg
 create mode 100644 app/src/main/res/mipmap-hdpi/sun.jpg
 create mode 100644 app/src/main/res/mipmap-xhdpi/sun.jpg
 create mode 100644 app/src/main/res/mipmap-xxhdpi/sun.jpg
 create mode 100644 app/src/main/res/mipmap-xxxhdpi/sun.jpg
➜  SimpleWeather git:(alarm-background-jobs) git co master
M	volley
Switched to branch 'master'
➜  SimpleWeather git:(master) git fetch origina
fatal: 'origina' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
➜  SimpleWeather git:(master) git fetch origin
remote: Counting objects: 4304, done.
remote: Compressing objects: 100% (3421/3421), done.
remote: Total 4304 (delta 1688), reused 3 (delta 3), pack-reused 3
Receiving objects: 100% (4304/4304), 38.16 MiB | 5.69 MiB/s, done.
Resolving deltas: 100% (1688/1688), completed with 3 local objects.
From github.com:derekriemer/colorado_alarm
 * [new branch]      Amir       -> origin/Amir
   5cf1a85..1b07cfd  Dilara     -> origin/Dilara
error: cannot lock ref 'refs/remotes/origin/amir': ref refs/remotes/origin/amir is at fab1a83c5bfcf4e893c3b7357d34ebe738439b07 but expected f3ff4b87f1f17e3651d8371c4f755cd6224f12ac
 ! f3ff4b8..90b0abc  amir       -> origin/amir  (unable to update local ref)
 * [new branch]      testing-master-merge -> origin/testing-master-merge
 * [new tag]         Final_Submission -> Final_Submission
➜  SimpleWeather git:(master) git co testing-master-merge
M	volley
Branch testing-master-merge set up to track remote branch testing-master-merge from origin.
Switched to a new branch 'testing-master-merge'
➜  SimpleWeather git:(testing-master-merge) ✗ git br
  Dilara
  alarm-background-jobs
  amir
  background-jobs
  master
* testing-master-merge
➜  SimpleWeather git:(testing-master-merge) ✗ git co background-jobs
error: Your local changes to the following files would be overwritten by checkout:
	.idea/gradle.xml
	.idea/modules.xml
Please, commit your changes or stash them before you can switch branches.
Aborting
➜  SimpleWeather git:(testing-master-merge) ✗ git stash
Saved working directory and index state WIP on testing-master-merge: d33e258 Merge branch 'Dilara' into testing-master-merge
HEAD is now at d33e258 Merge branch 'Dilara' into testing-master-merge
➜  SimpleWeather git:(testing-master-merge) ✗ git co background-jobs
M	volley
Switched to branch 'background-jobs'
➜  SimpleWeather git:(background-jobs) git co master
M	volley
Switched to branch 'master'
➜  SimpleWeather git:(master) git co background-jobs
M	volley
Switched to branch 'background-jobs'
➜  SimpleWeather git:(background-jobs) git push -u origin background-jobs
Counting objects: 26, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (20/20), done.
Writing objects: 100% (26/26), 4.00 KiB | 0 bytes/s, done.
Total 26 (delta 10), reused 0 (delta 0)
To git@github.com:derekriemer/colorado_alarm.git
 * [new branch]      background-jobs -> background-jobs
Branch background-jobs set up to track remote branch background-jobs from origin.
➜  SimpleWeather git:(background-jobs) ✗ git co master
M	.idea/modules.xml
M	volley
Switched to branch 'master'
➜  SimpleWeather git:(master) ✗ git pull
remote: Counting objects: 2, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 2 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (2/2), done.
From github.com:derekriemer/colorado_alarm
 * [new branch]      amir       -> origin/amir
   87f74f6..4cfeb78  master     -> origin/master
There is no tracking information for the current branch.
Please specify which branch you want to merge with.
See git-pull(1) for details.

    git pull <remote> <branch>

If you wish to set tracking information for this branch you can do so with:

    git branch --set-upstream-to=origin/<branch> master



➜  SimpleWeather git:(master) ✗ git br -d background-jobs
warning: deleting branch 'background-jobs' that has been merged to
         'refs/remotes/origin/background-jobs', but not yet merged to HEAD.
Deleted branch background-jobs (was 763a26a).
➜  SimpleWeather git:(master) ✗ git co -b big-merge
M	.idea/modules.xml
M	volley
Switched to a new branch 'big-merge'
➜  SimpleWeather git:(big-merge) ✗ git br -a
  Dilara
  alarm-background-jobs
  amir
* big-merge
  master
  testing-master-merge
  remotes/origin/Dilara
  remotes/origin/amir
  remotes/origin/background-jobs
  remotes/origin/derek
  remotes/origin/master
  remotes/origin/testing-master-merge
➜  SimpleWeather git:(big-merge) ✗ git merge Dilara
Updating ab92291..5cf1a85
error: Your local changes to the following files would be overwritten by merge:
	.idea/modules.xml
Please, commit your changes or stash them before you can merge.
Aborting
➜  SimpleWeather git:(big-merge) ✗ git status
On branch big-merge
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)

	modified:   .idea/modules.xml
	modified:   volley (untracked content)

no changes added to commit (use "git add" and/or "git commit -a")
➜  SimpleWeather git:(big-merge) ✗ git diff
➜  SimpleWeather git:(big-merge) ✗
➜  SimpleWeather git:(big-merge) ✗ git ci -am 'module tags'
[big-merge ed35e7f] module tags
 1 file changed, 1 insertion(+)
➜  SimpleWeather git:(big-merge) git merge Dilara
Removing app/src/main/java/com/robobrandon/simpleweather/AlarmActivity.java
Auto-merging .idea/modules.xml
Merge made by the 'recursive' strategy.
 .idea/.name                                                                 |   2 +-
 .idea/encodings.xml                                                         |   6 +++
 .idea/gradle.xml                                                            |   2 +-
 .idea/misc.xml                                                              |   2 +-
 .idea/modules.xml                                                           |   1 -
 .idea/vcs.xml                                                               |   2 +-
 README.md                                                                   |   4 +-
 app/src/main/AndroidManifest.xml                                            |   4 +-
 app/src/main/java/com/robobrandon/simpleweather/AlarmActivity.java          |  64 ----------------------------
 app/src/main/java/com/robobrandon/simpleweather/AlarmReceiver.java          |  39 ++++++++++++++++-
 app/src/main/java/com/robobrandon/simpleweather/AlarmService.java           |   3 +-
 app/src/main/java/com/robobrandon/simpleweather/MainActivity.java           | 268 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------------
 app/src/main/java/com/robobrandon/simpleweather/RingtonePlayingService.java | 164 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 app/src/main/res/drawable/rain.JPG                                          | Bin 0 -> 571117 bytes
 app/src/main/res/layout/alarm_layout.xml                                    |  51 ++++++++++++++++-------
 app/src/main/res/mipmap-hdpi/logo.JPG                                       | Bin 0 -> 13324 bytes
 app/src/main/res/raw/rain.mp3                                               | Bin 0 -> 917234 bytes
 app/src/main/res/raw/snow.mp3                                               | Bin 0 -> 49126 bytes
 app/src/main/res/raw/storm.mp3                                              | Bin 0 -> 248448 bytes
 app/src/main/res/raw/sun.mp3                                                | Bin 0 -> 414661 bytes
 app/src/main/res/values/strings.xml                                         |  10 ++++-
 volley                                                                      |   2 +-
 22 files changed, 456 insertions(+), 168 deletions(-)
 create mode 100644 .idea/encodings.xml
 delete mode 100644 app/src/main/java/com/robobrandon/simpleweather/AlarmActivity.java
 create mode 100644 app/src/main/java/com/robobrandon/simpleweather/RingtonePlayingService.java
 create mode 100644 app/src/main/res/drawable/rain.JPG
 create mode 100644 app/src/main/res/mipmap-hdpi/logo.JPG
 create mode 100644 app/src/main/res/raw/rain.mp3
 create mode 100644 app/src/main/res/raw/snow.mp3
 create mode 100644 app/src/main/res/raw/storm.mp3
 create mode 100644 app/src/main/res/raw/sun.mp3
➜  SimpleWeather git:(big-merge) ✗ git pull origin Dilara
From github.com:derekriemer/colorado_alarm
 * branch            Dilara     -> FETCH_HEAD
error: Your local changes to the following files would be overwritten by merge:
	.idea/misc.xml
Please, commit your changes or stash them before you can merge.
Aborting
➜  SimpleWeather git:(big-merge) ✗ git br
  Dilara
  alarm-background-jobs
  amir
* big-merge
  master
  testing-master-merge
➜  SimpleWeather git:(big-merge) ✗ git stash
Saved working directory and index state WIP on big-merge: aed2d74 Merge branch 'Dilara' into big-merge
HEAD is now at aed2d74 Merge branch 'Dilara' into big-merge
➜  SimpleWeather git:(big-merge) ✗ git co Dilara
M	volley
Switched to branch 'Dilara'
Your branch is behind 'origin/Dilara' by 2 commits, and can be fast-forwarded.
  (use "git pull" to update your local branch)
➜  SimpleWeather git:(Dilara) ✗ git pull origin Dilara
From github.com:derekriemer/colorado_alarm
 * branch            Dilara     -> FETCH_HEAD
Updating 5cf1a85..1b07cfd
Fast-forward
 .idea/misc.xml                                                              |   20 +-
 app/src/main/AndroidManifest.xml                                            |   21 +-
 app/src/main/java/com/robobrandon/simpleweather/AlarmReceiver.java          |   47 +-
 app/src/main/java/com/robobrandon/simpleweather/AlarmService.java           |   43 -
 app/src/main/java/com/robobrandon/simpleweather/CustomJsonRequest.java      |   29 -
 app/src/main/java/com/robobrandon/simpleweather/MainActivity.java           |  382 ++---
 app/src/main/java/com/robobrandon/simpleweather/MarsWeather.java            |   37 -
 app/src/main/java/com/robobrandon/simpleweather/RingtonePlayingService.java |    5 +-
 app/src/main/java/com/robobrandon/simpleweather/WeatherPullService.java     |    7 -
 app/src/main/res/drawable/snow.JPG                                          |  Bin 0 -> 633991 bytes
 app/src/main/res/drawable/sun.JPG                                           |  Bin 0 -> 749088 bytes
 app/src/main/res/layout/activity_main.xml                                   |   75 +-
 app/src/main/res/layout/{alarm_layout.xml => content_main.xml}              |   30 +-
 app/src/main/res/menu/menu_main.xml                                         |   10 +
 app/src/main/res/values/colors.xml                                          |    6 -
 app/src/main/res/values/dimens.xml                                          |    5 -
 app/src/main/res/values/strings.xml                                         |   12 -
 app/src/main/res/values/styles.xml                                          |   16 +-
 documentation/allclasses-frame.html                                         |   94 ++
 documentation/allclasses-noframe.html                                       |   94 ++
 documentation/com/android/volley/AuthFailureError.html                      |  365 +++++
 documentation/com/android/volley/BuildConfig.html                           |  356 +++++
 documentation/com/android/volley/Cache.Entry.html                           |  428 ++++++
 documentation/com/android/volley/Cache.html                                 |  354 +++++
 documentation/com/android/volley/CacheDispatcher.html                       |  362 +++++
 documentation/com/android/volley/ClientError.html                           |  308 ++++
 documentation/com/android/volley/DefaultRetryPolicy.html                    |  471 ++++++
 documentation/com/android/volley/ExecutorDelivery.html                      |  341 +++++
 documentation/com/android/volley/Network.html                               |  236 +++
 documentation/com/android/volley/NetworkDispatcher.html                     |  361 +++++
 documentation/com/android/volley/NetworkError.html                          |  316 ++++
 documentation/com/android/volley/NetworkResponse.html                       |  402 +++++
 documentation/com/android/volley/NoConnectionError.html                     |  305 ++++
 documentation/com/android/volley/ParseError.html                            |  312 ++++
 documentation/com/android/volley/Request.Method.html                        |  358 +++++
 documentation/com/android/volley/Request.Priority.html                      |  369 +++++
 documentation/com/android/volley/Request.html                               | 1126 ++++++++++++++
 documentation/com/android/volley/RequestQueue.RequestFilter.html            |  225 +++
 documentation/com/android/volley/RequestQueue.RequestFinishedListener.html  |  227 +++
 documentation/com/android/volley/RequestQueue.html                          |  504 +++++++
 documentation/com/android/volley/Response.ErrorListener.html                |  237 +++
 documentation/com/android/volley/Response.Listener.html                     |  233 +++
 documentation/com/android/volley/Response.html                              |  395 +++++
 documentation/com/android/volley/ResponseDelivery.html                      |  267 ++++
 documentation/com/android/volley/RetryPolicy.html                           |  267 ++++
 documentation/com/android/volley/ServerError.html                           |  304 ++++
 documentation/com/android/volley/TimeoutError.html                          |  288 ++++
 documentation/com/android/volley/VolleyError.html                           |  385 +++++
 documentation/com/android/volley/VolleyLog.html                             |  425 ++++++
 documentation/com/android/volley/package-frame.html                         |   57 +
 documentation/com/android/volley/package-summary.html                       |  340 +++++
 documentation/com/android/volley/package-tree.html                          |  198 +++
 documentation/com/android/volley/toolbox/AndroidAuthenticator.html          |  381 +++++
 documentation/com/android/volley/toolbox/Authenticator.html                 |  248 ++++
 documentation/com/android/volley/toolbox/BasicNetwork.html                  |  408 +++++
 documentation/com/android/volley/toolbox/ByteArrayPool.html                 |  373 +++++
 documentation/com/android/volley/toolbox/ClearCacheRequest.html             |  397 +++++
 documentation/com/android/volley/toolbox/DiskBasedCache.html                |  463 ++++++
 documentation/com/android/volley/toolbox/HttpClientStack.HttpPatch.html     |  347 +++++
 documentation/com/android/volley/toolbox/HttpClientStack.html               |  379 +++++
 documentation/com/android/volley/toolbox/HttpHeaderParser.html              |  339 +++++
 documentation/com/android/volley/toolbox/HttpStack.html                     |  245 +++
 documentation/com/android/volley/toolbox/HurlStack.UrlRewriter.html         |  229 +++
 documentation/com/android/volley/toolbox/HurlStack.html                     |  376 +++++
 documentation/com/android/volley/toolbox/ImageLoader.ImageCache.html        |  241 +++
 documentation/com/android/volley/toolbox/ImageLoader.ImageContainer.html    |  324 ++++
 documentation/com/android/volley/toolbox/ImageLoader.ImageListener.html     |  260 ++++
 documentation/com/android/volley/toolbox/ImageLoader.html                   |  574 ++++++++
 documentation/com/android/volley/toolbox/ImageRequest.html                  |  510 +++++++
 documentation/com/android/volley/toolbox/JsonArrayRequest.html              |  389 +++++
 documentation/com/android/volley/toolbox/JsonObjectRequest.html             |  392 +++++
 documentation/com/android/volley/toolbox/JsonRequest.html                   |  523 +++++++
 documentation/com/android/volley/toolbox/NetworkImageView.html              |  405 +++++
 documentation/com/android/volley/toolbox/NoCache.html                       |  421 ++++++
 documentation/com/android/volley/toolbox/PoolingByteArrayOutputStream.html  |  408 +++++
 documentation/com/android/volley/toolbox/RequestFuture.html                 |  424 ++++++
 documentation/com/android/volley/toolbox/StringRequest.html                 |  385 +++++
 documentation/com/android/volley/toolbox/Volley.html                        |  303 ++++
 documentation/com/android/volley/toolbox/package-frame.html                 |   47 +
 documentation/com/android/volley/toolbox/package-summary.html               |  302 ++++
 documentation/com/android/volley/toolbox/package-tree.html                  |  190 +++
 documentation/com/robobrandon/simpleweather/AlarmReceiver.html              |  276 ++++
 documentation/com/robobrandon/simpleweather/ApplicationTest.html            |  241 +++
 documentation/com/robobrandon/simpleweather/BuildConfig.html                |  356 +++++
 documentation/com/robobrandon/simpleweather/MainActivity.html               |  293 ++++
 documentation/com/robobrandon/simpleweather/R.anim.html                     |  432 ++++++
 documentation/com/robobrandon/simpleweather/R.array.html                    |  279 ++++
 documentation/com/robobrandon/simpleweather/R.attr.html                     | 5234 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 documentation/com/robobrandon/simpleweather/R.bool.html                     |  398 +++++
 documentation/com/robobrandon/simpleweather/R.color.html                    | 1673 +++++++++++++++++++++
 documentation/com/robobrandon/simpleweather/R.dimen.html                    | 1588 ++++++++++++++++++++
 documentation/com/robobrandon/simpleweather/R.drawable.html                 | 1503 +++++++++++++++++++
 documentation/com/robobrandon/simpleweather/R.html                          |  314 ++++
 documentation/com/robobrandon/simpleweather/R.id.html                       | 1962 +++++++++++++++++++++++++
 documentation/com/robobrandon/simpleweather/R.integer.html                  |  347 +++++
 documentation/com/robobrandon/simpleweather/R.layout.html                   |  925 ++++++++++++
 documentation/com/robobrandon/simpleweather/R.menu.html                     |  279 ++++
 documentation/com/robobrandon/simpleweather/R.mipmap.html                   |  296 ++++
 documentation/com/robobrandon/simpleweather/R.raw.html                      |  330 +++++
 documentation/com/robobrandon/simpleweather/R.string.html                   |  636 ++++++++
 documentation/com/robobrandon/simpleweather/R.style.html                    | 5549 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 documentation/com/robobrandon/simpleweather/R.styleable.html                | 9395 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 documentation/com/robobrandon/simpleweather/RingtonePlayingService.html     |  304 ++++
 documentation/com/robobrandon/simpleweather/package-frame.html              |   41 +
 documentation/com/robobrandon/simpleweather/package-summary.html            |  226 +++
 documentation/com/robobrandon/simpleweather/package-tree.html               |  168 +++
 documentation/constant-values.html                                          | 9251 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 documentation/deprecated-list.html                                          |  200 +++
 documentation/help-doc.html                                                 |  223 +++
 documentation/index-files/index-1.html                                      | 1146 +++++++++++++++
 documentation/index-files/index-10.html                                     |  164 +++
 documentation/index-files/index-11.html                                     |  289 ++++
 documentation/index-files/index-12.html                                     |  357 +++++
 documentation/index-files/index-13.html                                     |  249 ++++
 documentation/index-files/index-14.html                                     |  188 +++
 documentation/index-files/index-15.html                                     |  357 +++++
 documentation/index-files/index-16.html                                     |  142 ++
 documentation/index-files/index-17.html                                     |  335 +++++
 documentation/index-files/index-18.html                                     |  616 ++++++++
 documentation/index-files/index-19.html                                     | 1147 +++++++++++++++
 documentation/index-files/index-2.html                                      |  558 +++++++
 documentation/index-files/index-20.html                                     |  131 ++
 documentation/index-files/index-21.html                                     |  240 +++
 documentation/index-files/index-22.html                                     |  315 ++++
 documentation/index-files/index-3.html                                      |  360 +++++
 documentation/index-files/index-4.html                                      |  347 +++++
 documentation/index-files/index-5.html                                      |  186 +++
 documentation/index-files/index-6.html                                      |  137 ++
 documentation/index-files/index-7.html                                      |  348 +++++
 documentation/index-files/index-8.html                                      |  215 +++
 documentation/index-files/index-9.html                                      |  266 ++++
 documentation/index.html                                                    |   74 +
 documentation/overview-frame.html                                           |   23 +
 documentation/overview-summary.html                                         |  141 ++
 documentation/overview-tree.html                                            |  285 ++++
 documentation/package-list                                                  |    3 +
 documentation/script.js                                                     |   30 +
 documentation/serialized-form.html                                          |  197 +++
 documentation/stylesheet.css                                                |  574 ++++++++
 139 files changed, 73957 insertions(+), 520 deletions(-)
 delete mode 100644 app/src/main/java/com/robobrandon/simpleweather/AlarmService.java
 delete mode 100644 app/src/main/java/com/robobrandon/simpleweather/CustomJsonRequest.java
 delete mode 100644 app/src/main/java/com/robobrandon/simpleweather/MarsWeather.java
 delete mode 100644 app/src/main/java/com/robobrandon/simpleweather/WeatherPullService.java
 create mode 100644 app/src/main/res/drawable/snow.JPG
 create mode 100644 app/src/main/res/drawable/sun.JPG
 rename app/src/main/res/layout/{alarm_layout.xml => content_main.xml} (84%)
 create mode 100644 app/src/main/res/menu/menu_main.xml
 delete mode 100644 app/src/main/res/values/colors.xml
 delete mode 100644 app/src/main/res/values/dimens.xml
 delete mode 100644 app/src/main/res/values/strings.xml
 create mode 100644 documentation/allclasses-frame.html
 create mode 100644 documentation/allclasses-noframe.html
 create mode 100644 documentation/com/android/volley/AuthFailureError.html
 create mode 100644 documentation/com/android/volley/BuildConfig.html
 create mode 100644 documentation/com/android/volley/Cache.Entry.html
 create mode 100644 documentation/com/android/volley/Cache.html
 create mode 100644 documentation/com/android/volley/CacheDispatcher.html
 create mode 100644 documentation/com/android/volley/ClientError.html
 create mode 100644 documentation/com/android/volley/DefaultRetryPolicy.html
 create mode 100644 documentation/com/android/volley/ExecutorDelivery.html
 create mode 100644 documentation/com/android/volley/Network.html
 create mode 100644 documentation/com/android/volley/NetworkDispatcher.html
 create mode 100644 documentation/com/android/volley/NetworkError.html
 create mode 100644 documentation/com/android/volley/NetworkResponse.html
 create mode 100644 documentation/com/android/volley/NoConnectionError.html
 create mode 100644 documentation/com/android/volley/ParseError.html
 create mode 100644 documentation/com/android/volley/Request.Method.html
 create mode 100644 documentation/com/android/volley/Request.Priority.html
 create mode 100644 documentation/com/android/volley/Request.html
 create mode 100644 documentation/com/android/volley/RequestQueue.RequestFilter.html
 create mode 100644 documentation/com/android/volley/RequestQueue.RequestFinishedListener.html
 create mode 100644 documentation/com/android/volley/RequestQueue.html
 create mode 100644 documentation/com/android/volley/Response.ErrorListener.html
 create mode 100644 documentation/com/android/volley/Response.Listener.html
 create mode 100644 documentation/com/android/volley/Response.html
 create mode 100644 documentation/com/android/volley/ResponseDelivery.html
 create mode 100644 documentation/com/android/volley/RetryPolicy.html
 create mode 100644 documentation/com/android/volley/ServerError.html
 create mode 100644 documentation/com/android/volley/TimeoutError.html
 create mode 100644 documentation/com/android/volley/VolleyError.html
 create mode 100644 documentation/com/android/volley/VolleyLog.html
 create mode 100644 documentation/com/android/volley/package-frame.html
 create mode 100644 documentation/com/android/volley/package-summary.html
 create mode 100644 documentation/com/android/volley/package-tree.html
 create mode 100644 documentation/com/android/volley/toolbox/AndroidAuthenticator.html
 create mode 100644 documentation/com/android/volley/toolbox/Authenticator.html
 create mode 100644 documentation/com/android/volley/toolbox/BasicNetwork.html
 create mode 100644 documentation/com/android/volley/toolbox/ByteArrayPool.html
 create mode 100644 documentation/com/android/volley/toolbox/ClearCacheRequest.html
 create mode 100644 documentation/com/android/volley/toolbox/DiskBasedCache.html
 create mode 100644 documentation/com/android/volley/toolbox/HttpClientStack.HttpPatch.html
 create mode 100644 documentation/com/android/volley/toolbox/HttpClientStack.html
 create mode 100644 documentation/com/android/volley/toolbox/HttpHeaderParser.html
 create mode 100644 documentation/com/android/volley/toolbox/HttpStack.html
 create mode 100644 documentation/com/android/volley/toolbox/HurlStack.UrlRewriter.html
 create mode 100644 documentation/com/android/volley/toolbox/HurlStack.html
 create mode 100644 documentation/com/android/volley/toolbox/ImageLoader.ImageCache.html
 create mode 100644 documentation/com/android/volley/toolbox/ImageLoader.ImageContainer.html
 create mode 100644 documentation/com/android/volley/toolbox/ImageLoader.ImageListener.html
 create mode 100644 documentation/com/android/volley/toolbox/ImageLoader.html
 create mode 100644 documentation/com/android/volley/toolbox/ImageRequest.html
 create mode 100644 documentation/com/android/volley/toolbox/JsonArrayRequest.html
 create mode 100644 documentation/com/android/volley/toolbox/JsonObjectRequest.html
 create mode 100644 documentation/com/android/volley/toolbox/JsonRequest.html
 create mode 100644 documentation/com/android/volley/toolbox/NetworkImageView.html
 create mode 100644 documentation/com/android/volley/toolbox/NoCache.html
 create mode 100644 documentation/com/android/volley/toolbox/PoolingByteArrayOutputStream.html
 create mode 100644 documentation/com/android/volley/toolbox/RequestFuture.html
 create mode 100644 documentation/com/android/volley/toolbox/StringRequest.html
 create mode 100644 documentation/com/android/volley/toolbox/Volley.html
 create mode 100644 documentation/com/android/volley/toolbox/package-frame.html
 create mode 100644 documentation/com/android/volley/toolbox/package-summary.html
 create mode 100644 documentation/com/android/volley/toolbox/package-tree.html
 create mode 100644 documentation/com/robobrandon/simpleweather/AlarmReceiver.html
 create mode 100644 documentation/com/robobrandon/simpleweather/ApplicationTest.html
 create mode 100644 documentation/com/robobrandon/simpleweather/BuildConfig.html
 create mode 100644 documentation/com/robobrandon/simpleweather/MainActivity.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.anim.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.array.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.attr.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.bool.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.color.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.dimen.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.drawable.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.id.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.integer.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.layout.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.menu.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.mipmap.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.raw.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.string.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.style.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.styleable.html
 create mode 100644 documentation/com/robobrandon/simpleweather/RingtonePlayingService.html
 create mode 100644 documentation/com/robobrandon/simpleweather/package-frame.html
 create mode 100644 documentation/com/robobrandon/simpleweather/package-summary.html
 create mode 100644 documentation/com/robobrandon/simpleweather/package-tree.html
 create mode 100644 documentation/constant-values.html
 create mode 100644 documentation/deprecated-list.html
 create mode 100644 documentation/help-doc.html
 create mode 100644 documentation/index-files/index-1.html
 create mode 100644 documentation/index-files/index-10.html
 create mode 100644 documentation/index-files/index-11.html
 create mode 100644 documentation/index-files/index-12.html
 create mode 100644 documentation/index-files/index-13.html
 create mode 100644 documentation/index-files/index-14.html
 create mode 100644 documentation/index-files/index-15.html
 create mode 100644 documentation/index-files/index-16.html
 create mode 100644 documentation/index-files/index-17.html
 create mode 100644 documentation/index-files/index-18.html
 create mode 100644 documentation/index-files/index-19.html
 create mode 100644 documentation/index-files/index-2.html
 create mode 100644 documentation/index-files/index-20.html
 create mode 100644 documentation/index-files/index-21.html
 create mode 100644 documentation/index-files/index-22.html
 create mode 100644 documentation/index-files/index-3.html
 create mode 100644 documentation/index-files/index-4.html
 create mode 100644 documentation/index-files/index-5.html
 create mode 100644 documentation/index-files/index-6.html
 create mode 100644 documentation/index-files/index-7.html
 create mode 100644 documentation/index-files/index-8.html
 create mode 100644 documentation/index-files/index-9.html
 create mode 100644 documentation/index.html
 create mode 100644 documentation/overview-frame.html
 create mode 100644 documentation/overview-summary.html
 create mode 100644 documentation/overview-tree.html
 create mode 100644 documentation/package-list
 create mode 100644 documentation/script.js
 create mode 100644 documentation/serialized-form.html
 create mode 100644 documentation/stylesheet.css
➜  SimpleWeather git:(Dilara) ✗ git status
On branch Dilara
Your branch is up-to-date with 'origin/Dilara'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)

	modified:   volley (new commits, untracked content)

no changes added to commit (use "git add" and/or "git commit -a")
➜  SimpleWeather git:(Dilara) ✗ git merge master
Already up-to-date.
➜  SimpleWeather git:(Dilara) ✗ git br
* Dilara
  alarm-background-jobs
  amir
  big-merge
  master
  testing-master-merge
➜  SimpleWeather git:(Dilara) ✗ git co master
error: Your local changes to the following files would be overwritten by checkout:
	.idea/gradle.xml
Please, commit your changes or stash them before you can switch branches.
Aborting
➜  SimpleWeather git:(Dilara) ✗ git stash
Saved working directory and index state WIP on Dilara: 1b07cfd documentation files for Android Studio
HEAD is now at 1b07cfd documentation files for Android Studio
➜  SimpleWeather git:(Dilara) ✗ git co master
M	volley
Switched to branch 'master'
➜  SimpleWeather git:(master) git br
  Dilara
  alarm-background-jobs
  amir
  big-merge
* master
  testing-master-merge
➜  SimpleWeather git:(master) git co alarm-background-jobs
M	volley
Switched to branch 'alarm-background-jobs'
➜  SimpleWeather git:(alarm-background-jobs) git merge alarm-background-jobs
Already up-to-date.
➜  SimpleWeather git:(alarm-background-jobs) git co master
M	volley
Switched to branch 'master'
➜  SimpleWeather git:(master) git merge alarm-background-jobs
Updating ab92291..ab5a654
Fast-forward
 .idea/misc.xml                                                                        |   2 +-
 app/src/main/AndroidManifest.xml                                                      |  18 ++++++++++--
 app/src/main/java/com/robobrandon/simpleweather/AlarmActivity.java                    | 149 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------
 app/src/main/java/com/robobrandon/simpleweather/MainActivity.java                     | 148 ++++++++++++++++++++++++------------------------------------------------------------------------
 app/src/main/java/com/robobrandon/simpleweather/{MarsWeather.java => RestHelper.java} |  10 +++----
 app/src/main/java/com/robobrandon/simpleweather/RingtonePlayingService.java           | 164 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 app/src/main/java/com/robobrandon/simpleweather/WeatherPullReceiver.java              |  16 +++++++++++
 app/src/main/java/com/robobrandon/simpleweather/WeatherPullService.java               |  20 +++++++++++--
 app/src/main/res/drawable/sun.jpg                                                     | Bin 0 -> 104100 bytes
 app/src/main/res/layout/activity_main.xml                                             |  13 +++++----
 app/src/main/res/layout/alarm_layout.xml                                              |  51 +++++++++++++++++++++++----------
 app/src/main/res/mipmap-hdpi/sun.jpg                                                  | Bin 0 -> 104100 bytes
 app/src/main/res/mipmap-xhdpi/sun.jpg                                                 | Bin 0 -> 104100 bytes
 app/src/main/res/mipmap-xxhdpi/sun.jpg                                                | Bin 0 -> 104100 bytes
 app/src/main/res/mipmap-xxxhdpi/sun.jpg                                               | Bin 0 -> 104100 bytes
 15 files changed, 424 insertions(+), 167 deletions(-)
 rename app/src/main/java/com/robobrandon/simpleweather/{MarsWeather.java => RestHelper.java} (75%)
 create mode 100644 app/src/main/java/com/robobrandon/simpleweather/RingtonePlayingService.java


 create mode 100644 app/src/main/java/com/robobrandon/simpleweather/WeatherPullReceiver.java
 create mode 100644 app/src/main/res/drawable/sun.jpg
 create mode 100644 app/src/main/res/mipmap-hdpi/sun.jpg
 create mode 100644 app/src/main/res/mipmap-xhdpi/sun.jpg
 create mode 100644 app/src/main/res/mipmap-xxhdpi/sun.jpg
 create mode 100644 app/src/main/res/mipmap-xxxhdpi/sun.jpg
➜  SimpleWeather git:(master) git push origin master
To git@github.com:derekriemer/colorado_alarm.git
 ! [rejected]        master -> master (non-fast-forward)
error: failed to push some refs to 'git@github.com:derekriemer/colorado_alarm.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
➜  SimpleWeather git:(master) git pull
From github.com:derekriemer/colorado_alarm
 * [new branch]      Amir       -> origin/Amir
There is no tracking information for the current branch.
Please specify which branch you want to merge with.
See git-pull(1) for details.

    git pull <remote> <branch>

If you wish to set tracking information for this branch you can do so with:

    git branch --set-upstream-to=origin/<branch> master

➜  SimpleWeather git:(master) git br
  Dilara
  alarm-background-jobs
  amir
  big-merge
* master
  testing-master-merge
➜  SimpleWeather git:(master) git st
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)

	modified:   volley (untracked content)

no changes added to commit (use "git add" and/or "git commit -a")
➜  SimpleWeather git:(master) git pull origin master
From github.com:derekriemer/colorado_alarm
 * branch            master     -> FETCH_HEAD
Merge made by the 'recursive' strategy.
 README.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
➜  SimpleWeather git:(master) git push origin master
Counting objects: 26, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (20/20), done.
Writing objects: 100% (26/26), 107.43 KiB | 0 bytes/s, done.
Total 26 (delta 9), reused 2 (delta 2)
To git@github.com:derekriemer/colorado_alarm.git
   4cfeb78..b40ee11  master -> master
➜  SimpleWeather git:(master) ls
README.md         app               build.gradle      gradle.properties gradlew.bat       settings.gradle
SimpleWeather.iml build             gradle            gradlew           local.properties  volley
➜  SimpleWeather git:(master) ✗ mkdir documentation
➜  SimpleWeather git:(master) ✗ git add .
➜  SimpleWeather git:(master) ✗ git st
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   .idea/misc.xml
	modified:   app/src/main/java/com/robobrandon/simpleweather/AlarmActivity.java
	modified:   app/src/main/java/com/robobrandon/simpleweather/AlarmReceiver.java
	modified:   app/src/main/java/com/robobrandon/simpleweather/CustomJsonRequest.java
	modified:   app/src/main/java/com/robobrandon/simpleweather/MainActivity.java
	modified:   app/src/main/java/com/robobrandon/simpleweather/RestHelper.java
	new file:   documentation/allclasses-frame.html
	new file:   documentation/allclasses-noframe.html
	new file:   documentation/com/android/volley/AuthFailureError.html
	new file:   documentation/com/android/volley/BuildConfig.html
	new file:   documentation/com/android/volley/Cache.Entry.html
	new file:   documentation/com/android/volley/Cache.html
	new file:   documentation/com/android/volley/CacheDispatcher.html
	new file:   documentation/com/android/volley/DefaultRetryPolicy.html
	new file:   documentation/com/android/volley/ExecutorDelivery.html
	new file:   documentation/com/android/volley/Network.html
	new file:   documentation/com/android/volley/NetworkDispatcher.html
	new file:   documentation/com/android/volley/NetworkError.html
	new file:   documentation/com/android/volley/NetworkResponse.html
	new file:   documentation/com/android/volley/NoConnectionError.html
	new file:   documentation/com/android/volley/ParseError.html
	new file:   documentation/com/android/volley/Request.Method.html
	new file:   documentation/com/android/volley/Request.Priority.html
	new file:   documentation/com/android/volley/Request.html
	new file:   documentation/com/android/volley/RequestQueue.RequestFilter.html
	new file:   documentation/com/android/volley/RequestQueue.RequestFinishedListener.html
	new file:   documentation/com/android/volley/RequestQueue.html
	new file:   documentation/com/android/volley/Response.ErrorListener.html
	new file:   documentation/com/android/volley/Response.Listener.html
	new file:   documentation/com/android/volley/Response.html
	new file:   documentation/com/android/volley/ResponseDelivery.html
	new file:   documentation/com/android/volley/RetryPolicy.html
	new file:   documentation/com/android/volley/ServerError.html
	new file:   documentation/com/android/volley/TimeoutError.html
	new file:   documentation/com/android/volley/VolleyError.html
	new file:   documentation/com/android/volley/VolleyLog.html
	new file:   documentation/com/android/volley/package-frame.html
	new file:   documentation/com/android/volley/package-summary.html
	new file:   documentation/com/android/volley/package-tree.html
	new file:   documentation/com/android/volley/toolbox/AndroidAuthenticator.html
	new file:   documentation/com/android/volley/toolbox/Authenticator.html
	new file:   documentation/com/android/volley/toolbox/BasicNetwork.html
	new file:   documentation/com/android/volley/toolbox/ByteArrayPool.html
	new file:   documentation/com/android/volley/toolbox/ClearCacheRequest.html
	new file:   documentation/com/android/volley/toolbox/DiskBasedCache.html
	new file:   documentation/com/android/volley/toolbox/HttpClientStack.HttpPatch.html
	new file:   documentation/com/android/volley/toolbox/HttpClientStack.html
	new file:   documentation/com/android/volley/toolbox/HttpHeaderParser.html
	new file:   documentation/com/android/volley/toolbox/HttpStack.html
	new file:   documentation/com/android/volley/toolbox/HurlStack.UrlRewriter.html
	new file:   documentation/com/android/volley/toolbox/HurlStack.html
	new file:   documentation/com/android/volley/toolbox/ImageLoader.ImageCache.html
	new file:   documentation/com/android/volley/toolbox/ImageLoader.ImageContainer.html
	new file:   documentation/com/android/volley/toolbox/ImageLoader.ImageListener.html
	new file:   documentation/com/android/volley/toolbox/ImageLoader.html
	new file:   documentation/com/android/volley/toolbox/ImageRequest.html
	new file:   documentation/com/android/volley/toolbox/JsonArrayRequest.html
	new file:   documentation/com/android/volley/toolbox/JsonObjectRequest.html
	new file:   documentation/com/android/volley/toolbox/JsonRequest.html
	new file:   documentation/com/android/volley/toolbox/NetworkImageView.html
	new file:   documentation/com/android/volley/toolbox/NoCache.html
	new file:   documentation/com/android/volley/toolbox/PoolingByteArrayOutputStream.html
	new file:   documentation/com/android/volley/toolbox/RequestFuture.html
	new file:   documentation/com/android/volley/toolbox/StringRequest.html
	new file:   documentation/com/android/volley/toolbox/Volley.html
	new file:   documentation/com/android/volley/toolbox/package-frame.html
	new file:   documentation/com/android/volley/toolbox/package-summary.html
	new file:   documentation/com/android/volley/toolbox/package-tree.html
	new file:   documentation/com/robobrandon/simpleweather/AlarmActivity.html
	new file:   documentation/com/robobrandon/simpleweather/AlarmReceiver.html
	new file:   documentation/com/robobrandon/simpleweather/AlarmService.html
	new file:   documentation/com/robobrandon/simpleweather/ApplicationTest.html
	new file:   documentation/com/robobrandon/simpleweather/BuildConfig.html
	new file:   documentation/com/robobrandon/simpleweather/CustomJsonRequest.html
	new file:   documentation/com/robobrandon/simpleweather/MainActivity.html
	new file:   documentation/com/robobrandon/simpleweather/R.anim.html
	new file:   documentation/com/robobrandon/simpleweather/R.attr.html
	new file:   documentation/com/robobrandon/simpleweather/R.bool.html
	new file:   documentation/com/robobrandon/simpleweather/R.color.html
	new file:   documentation/com/robobrandon/simpleweather/R.dimen.html
	new file:   documentation/com/robobrandon/simpleweather/R.drawable.html
	new file:   documentation/com/robobrandon/simpleweather/R.html
	new file:   documentation/com/robobrandon/simpleweather/R.id.html
	new file:   documentation/com/robobrandon/simpleweather/R.integer.html
	new file:   documentation/com/robobrandon/simpleweather/R.layout.html
	new file:   documentation/com/robobrandon/simpleweather/R.mipmap.html
	new file:   documentation/com/robobrandon/simpleweather/R.string.html
	new file:   documentation/com/robobrandon/simpleweather/R.style.html
	new file:   documentation/com/robobrandon/simpleweather/R.styleable.html
	new file:   documentation/com/robobrandon/simpleweather/RestHelper.html
	new file:   documentation/com/robobrandon/simpleweather/RingtonePlayingService.html
	new file:   documentation/com/robobrandon/simpleweather/package-frame.html
	new file:   documentation/com/robobrandon/simpleweather/package-summary.html
	new file:   documentation/com/robobrandon/simpleweather/package-tree.html
	new file:   documentation/constant-values.html
	new file:   documentation/deprecated-list.html
	new file:   documentation/help-doc.html
	new file:   documentation/index-files/index-1.html
	new file:   documentation/index-files/index-10.html
	new file:   documentation/index-files/index-11.html
	new file:   documentation/index-files/index-12.html
	new file:   documentation/index-files/index-13.html
	new file:   documentation/index-files/index-14.html
	new file:   documentation/index-files/index-15.html
	new file:   documentation/index-files/index-16.html
	new file:   documentation/index-files/index-17.html
	new file:   documentation/index-files/index-18.html
	new file:   documentation/index-files/index-19.html
	new file:   documentation/index-files/index-2.html
	new file:   documentation/index-files/index-20.html
	new file:   documentation/index-files/index-21.html
	new file:   documentation/index-files/index-22.html
	new file:   documentation/index-files/index-3.html
	new file:   documentation/index-files/index-4.html
	new file:   documentation/index-files/index-5.html
	new file:   documentation/index-files/index-6.html
	new file:   documentation/index-files/index-7.html
	new file:   documentation/index-files/index-8.html
	new file:   documentation/index-files/index-9.html
	new file:   documentation/index.html
	new file:   documentation/overview-frame.html
	new file:   documentation/overview-summary.html
	new file:   documentation/overview-tree.html
	new file:   documentation/package-list
	new file:   documentation/script.js
	new file:   documentation/serialized-form.html
	new file:   documentation/stylesheet.css

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)
  (commit or discard the untracked or modified content in submodules)

	modified:   volley (untracked content)

➜  SimpleWeather git:(master) ✗ git ci -am 'added JavaDoc'
[master 0974c71] added JavaDoc
 127 files changed, 73521 insertions(+), 16 deletions(-)
 create mode 100644 documentation/allclasses-frame.html
 create mode 100644 documentation/allclasses-noframe.html
 create mode 100644 documentation/com/android/volley/AuthFailureError.html
 create mode 100644 documentation/com/android/volley/BuildConfig.html
 create mode 100644 documentation/com/android/volley/Cache.Entry.html
 create mode 100644 documentation/com/android/volley/Cache.html
 create mode 100644 documentation/com/android/volley/CacheDispatcher.html
 create mode 100644 documentation/com/android/volley/DefaultRetryPolicy.html
 create mode 100644 documentation/com/android/volley/ExecutorDelivery.html
 create mode 100644 documentation/com/android/volley/Network.html
 create mode 100644 documentation/com/android/volley/NetworkDispatcher.html
 create mode 100644 documentation/com/android/volley/NetworkError.html
 create mode 100644 documentation/com/android/volley/NetworkResponse.html
 create mode 100644 documentation/com/android/volley/NoConnectionError.html
 create mode 100644 documentation/com/android/volley/ParseError.html
 create mode 100644 documentation/com/android/volley/Request.Method.html
 create mode 100644 documentation/com/android/volley/Request.Priority.html
 create mode 100644 documentation/com/android/volley/Request.html
 create mode 100644 documentation/com/android/volley/RequestQueue.RequestFilter.html
 create mode 100644 documentation/com/android/volley/RequestQueue.RequestFinishedListener.html
 create mode 100644 documentation/com/android/volley/RequestQueue.html
 create mode 100644 documentation/com/android/volley/Response.ErrorListener.html
 create mode 100644 documentation/com/android/volley/Response.Listener.html
 create mode 100644 documentation/com/android/volley/Response.html
 create mode 100644 documentation/com/android/volley/ResponseDelivery.html
 create mode 100644 documentation/com/android/volley/RetryPolicy.html
 create mode 100644 documentation/com/android/volley/ServerError.html
 create mode 100644 documentation/com/android/volley/TimeoutError.html
 create mode 100644 documentation/com/android/volley/VolleyError.html
 create mode 100644 documentation/com/android/volley/VolleyLog.html
 create mode 100644 documentation/com/android/volley/package-frame.html
 create mode 100644 documentation/com/android/volley/package-summary.html
 create mode 100644 documentation/com/android/volley/package-tree.html
 create mode 100644 documentation/com/android/volley/toolbox/AndroidAuthenticator.html
 create mode 100644 documentation/com/android/volley/toolbox/Authenticator.html
 create mode 100644 documentation/com/android/volley/toolbox/BasicNetwork.html
 create mode 100644 documentation/com/android/volley/toolbox/ByteArrayPool.html
 create mode 100644 documentation/com/android/volley/toolbox/ClearCacheRequest.html
 create mode 100644 documentation/com/android/volley/toolbox/DiskBasedCache.html
 create mode 100644 documentation/com/android/volley/toolbox/HttpClientStack.HttpPatch.html
 create mode 100644 documentation/com/android/volley/toolbox/HttpClientStack.html
 create mode 100644 documentation/com/android/volley/toolbox/HttpHeaderParser.html
 create mode 100644 documentation/com/android/volley/toolbox/HttpStack.html
 create mode 100644 documentation/com/android/volley/toolbox/HurlStack.UrlRewriter.html
 create mode 100644 documentation/com/android/volley/toolbox/HurlStack.html
 create mode 100644 documentation/com/android/volley/toolbox/ImageLoader.ImageCache.html
 create mode 100644 documentation/com/android/volley/toolbox/ImageLoader.ImageContainer.html
 create mode 100644 documentation/com/android/volley/toolbox/ImageLoader.ImageListener.html
 create mode 100644 documentation/com/android/volley/toolbox/ImageLoader.html
 create mode 100644 documentation/com/android/volley/toolbox/ImageRequest.html
 create mode 100644 documentation/com/android/volley/toolbox/JsonArrayRequest.html
 create mode 100644 documentation/com/android/volley/toolbox/JsonObjectRequest.html
 create mode 100644 documentation/com/android/volley/toolbox/JsonRequest.html
 create mode 100644 documentation/com/android/volley/toolbox/NetworkImageView.html
 create mode 100644 documentation/com/android/volley/toolbox/NoCache.html
 create mode 100644 documentation/com/android/volley/toolbox/PoolingByteArrayOutputStream.html
 create mode 100644 documentation/com/android/volley/toolbox/RequestFuture.html
 create mode 100644 documentation/com/android/volley/toolbox/StringRequest.html
 create mode 100644 documentation/com/android/volley/toolbox/Volley.html
 create mode 100644 documentation/com/android/volley/toolbox/package-frame.html
 create mode 100644 documentation/com/android/volley/toolbox/package-summary.html
 create mode 100644 documentation/com/android/volley/toolbox/package-tree.html
 create mode 100644 documentation/com/robobrandon/simpleweather/AlarmActivity.html
 create mode 100644 documentation/com/robobrandon/simpleweather/AlarmReceiver.html
 create mode 100644 documentation/com/robobrandon/simpleweather/AlarmService.html
 create mode 100644 documentation/com/robobrandon/simpleweather/ApplicationTest.html
 create mode 100644 documentation/com/robobrandon/simpleweather/BuildConfig.html
 create mode 100644 documentation/com/robobrandon/simpleweather/CustomJsonRequest.html
 create mode 100644 documentation/com/robobrandon/simpleweather/MainActivity.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.anim.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.attr.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.bool.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.color.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.dimen.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.drawable.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.id.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.integer.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.layout.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.mipmap.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.string.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.style.html
 create mode 100644 documentation/com/robobrandon/simpleweather/R.styleable.html
 create mode 100644 documentation/com/robobrandon/simpleweather/RestHelper.html
 create mode 100644 documentation/com/robobrandon/simpleweather/RingtonePlayingService.html
 create mode 100644 documentation/com/robobrandon/simpleweather/package-frame.html
 create mode 100644 documentation/com/robobrandon/simpleweather/package-summary.html
 create mode 100644 documentation/com/robobrandon/simpleweather/package-tree.html
 create mode 100644 documentation/constant-values.html
 create mode 100644 documentation/deprecated-list.html
 create mode 100644 documentation/help-doc.html
 create mode 100644 documentation/index-files/index-1.html
 create mode 100644 documentation/index-files/index-10.html
 create mode 100644 documentation/index-files/index-11.html
 create mode 100644 documentation/index-files/index-12.html
 create mode 100644 documentation/index-files/index-13.html
 create mode 100644 documentation/index-files/index-14.html
 create mode 100644 documentation/index-files/index-15.html
 create mode 100644 documentation/index-files/index-16.html
 create mode 100644 documentation/index-files/index-17.html
 create mode 100644 documentation/index-files/index-18.html


# Weather Alarm Clock
 create mode 100644 documentation/index-files/index-19.html
 create mode 100644 documentation/index-files/index-2.html
 create mode 100644 documentation/index-files/index-20.html
 create mode 100644 documentation/index-files/index-21.html
 create mode 100644 documentation/index-files/index-22.html
 create mode 100644 documentation/index-files/index-3.html
 create mode 100644 documentation/index-files/index-4.html
 create mode 100644 documentation/index-files/index-5.html
 create mode 100644 documentation/index-files/index-6.html
 create mode 100644 documentation/index-files/index-7.html
 create mode 100644 documentation/index-files/index-8.html
 create mode 100644 documentation/index-files/index-9.html
 create mode 100644 documentation/index.html
 create mode 100644 documentation/overview-frame.html
 create mode 100644 documentation/overview-summary.html
 create mode 100644 documentation/overview-tree.html
 create mode 100644 documentation/package-list
 create mode 100644 documentation/script.js
 create mode 100644 documentation/serialized-form.html
 create mode 100644 documentation/stylesheet.css


#Weather Alarm Clock
# Colorado Alarm Clock (API)

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
ID      Requirements    Time (hour)     Type of Requirements    User Story
01      alarm set/disable       7       user    As a user, I want to set and disable the alarm so that I can control when I wake up.
02      alarm tone      7       user    As a user, I want to set different alarm tones so that I can hear pleasant sounds.
03      find location   2       fucntional      As a developer, I need access to location data so that I can retrieve weather data for the user.
04      track weather   4       fucntional      As a developer, I need to track weather data so that I can wake up the user at appropriate time.

