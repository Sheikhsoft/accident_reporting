# Flutter Accident Reporting App

A Flutter Accident reporting App working in both iOS and Android.This project total size of all Dart files is 4714 bites. The packages used in this project all are dynamic and have have broad applicability.
Specially the human_anatomy package is super unique, developer can use that package for medical relative app.
For view the app submit result please visit
http://www.sheikhsoft.com/accident-reporting/index.php

# Contribution
Developed By Sk SHAMIMUL ISLAM (http://www.sheikhsoft.com)

Concept Design by Johnyvino (http://johnyvino.com)

## Demo

|<img src="http://sheikhsoft.com/screensort/fullapp/ar_1.gif" width="340" height="640" title="Screen Shoot">|<img src="http://sheikhsoft.com/screensort/fullapp/ar_2.gif" width="340" height="640" title="Screen Shoot">|
|<img src="http://sheikhsoft.com/screensort/fullapp/ar_3.gif" width="340" height="640" title="Screen Shoot">|<img src="http://sheikhsoft.com/screensort/fullapp/ar_4.gif" width="340" height="640" title="Screen Shoot">|
|<img src="http://sheikhsoft.com/screensort/fullapp/ar_5.gif" width="340" height="640" title="Screen Shoot">|<img src="http://sheikhsoft.com/screensort/fullapp/ar_6.gif" width="340" height="640" title="Screen Shoot">|
|<img src="http://sheikhsoft.com/screensort/fullapp/ar_7.gif" width="340" height="640" title="Screen Shoot">|

## Video Demo

https://www.youtube.com/watch?v=q0FlApQriS4&feature=youtu.be

## Installation

Run  `flutter run` in your terminal.

For view the result of the App please visit

http://www.sheikhsoft.com/accident-reporting/index.php

### Goals for this sample

The Global status report on road safety 2015, reflecting information from 180 countries, indicates that worldwide the total number of road traffic deaths has plateaued at 1.25 million per year.

A report of Gazette Review by By Barry W Stanton on March 31, 2017, says that Rape crime rates are going higher in many countries.

Not only road collisions and abuse cases, there are also Assaults, Abduction, Larceny, fire disasters in various parts of the world.

When people come across any such conflicts, they crave to report to the police. But their fear hinders them.

my goal in to give developer some tools so that they can defend crime on level best and contribute to the society.

and the flowing article also encourage me to develop the app and open source it.

https://medium.muz.li/save-our-souls-93d822ddbdd

### The important bits

for MacOs No configuration required - the project should work out of the box.

The Project Developed On MacOs platform so if you run it on windows it will be show some error like Flutter SDk or Android SDk not Found.
In that case you have to flow this step.

- create a new flutter project(include kotlin and swift)
- add the flowing two permission in your 'AndroidManifest.xml' file
```xml
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
```

- add project assets folder to your project root

- add project 'pubspec.yaml' assets: section to your project 'pubspec.yaml'

- [convert your android to AndroidX] (https://flutter.dev/docs/development/packages-and-plugins/androidx-compatibility)

-  Then, Add the packages to your project 'pubspec.yaml'

```yaml
  page_transition: ^1.0.9
  swipe_button: ^0.0.2
  human_anatomy: ^0.0.2
  data_review_and_upload: ^0.0.4
  analog_time_picker: ^0.0.2
  custom_radio_button: ^0.0.3
  location_and_image_picker: ^0.0.3
```
- Replace your 'main.dart' by the project 'main.dart'

- You are ready to go...


please read the packages documentation for learning more about the project

