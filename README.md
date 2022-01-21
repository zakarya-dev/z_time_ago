<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

This package is used to get time duration from now and given time for kurdish, arabic and english, simple and easy to use.

## Features

Changes date to time ago.

## Getting started

add package to your pubspec.yaml file
```yaml
    dependecies:
        flutter:
            sdk: flutter
        z_time_ago:
```

import it
```dart
import 'package:z_time_ago/z_time_ago.dart';
```

## Usage

```dart
String result = ZTimeAgo().getTimeAgo(
    date: DateTime.parse('2021-01-15 20:50:36.977'),
    language: Language.kurdish,
)
```