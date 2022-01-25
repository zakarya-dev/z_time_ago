This package is used to get time duration from now and given time for kurdish, arabic and english, simple and easy to use.

## Features

Changes date to time ago.

## Getting started

## Install it

add package to your pubspec.yaml file
```yaml
    dependecies:
        flutter:
            sdk: flutter
        z_time_ago: any
```

## Or

Run this command in terminal
```dart
flutter pub add z_time_ago
```

## Import it

import it
```dart
import 'package:z_time_ago/z_time_ago.dart';
```

## Usage

## With DateTime Type

```dart
String result = ZTimeAgo().getTimeAgo(
    date: DateTime.parse('2021-01-15 20:50:36.977'),
    language: Language.kurdish,
);
```

## With String Type

```dart
String result = ZTimeAgo().getTimeAgo(
    date: '2021-01-15 20:50:36.977',
    language: Language.kurdish,
);
```