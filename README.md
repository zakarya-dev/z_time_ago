This package is used to get time duration from now and given time for kurdish, arabic and english, simple and easy to use.

## Features

🌟 Changes date to time ago.

<img src="https://github.com/zakarya0/z_time_ago/raw/main/assets/img/all.png"><br><br>

## Getting started

Depend on it

add package to your pubspec.yaml file
```yaml
    dependecies:
        flutter:
            sdk: flutter
        z_time_ago: any
```

Or

Run this command in terminal
```dart
flutter pub add z_time_ago
```
<br>

Import it

```dart
import 'package:z_time_ago/z_time_ago.dart';
```
<br><br><br>

## Usage

With DateTime Type

```dart
String result = ZTimeAgo().getTimeAgo(
    date: DateTime.parse('2021-01-15 20:50:36.977'),
    language: Language.kurdish,
);
```
<br><br>

With String Type

```dart
String result = ZTimeAgo().getTimeAgo(
    date: '2021-01-15 20:50:36.977',
    language: Language.kurdish,
);
```
<br><br><br><br>

## More Examples
```dart
ZTimeAgo().getTimeAgo(
    date: '2022-01-28 11:46:54.897839',
),
```
![img](assets/img/kurdishMonthAgo.png)<br><br>

```dart
ZTimeAgo().getTimeAgo(
    date: '2022-01-28 11:46:54.897839',
    language: Language.arabic,
),
```
![img](assets/img/arabicMonthAgo.png)<br><br>

```dart
ZTimeAgo().getTimeAgo(
    date: '2022-03-01 08:46:54.897839',
),
```
![img](assets/img/englishMonthAgo.png)<br><br>

```dart
ZTimeAgo().getTimeAgo(
    date: '2022-03-01 08:46:54.897839',
    language: Language.kurdish,
),
```
![img](assets/img/kurdishHoursAgo.png)<br><br>

```dart
ZTimeAgo().getTimeAgo(
    date: '2022-03-01 08:46:54.897839',
    language: Language.arabic,
),
```
![img](assets/img/arabicHoursAgo.png)<br><br>

```dart
ZTimeAgo().getTimeAgo(
    date: '2022-03-01 08:46:54.897839',
    language: Language.english,
),
```
![img](assets/img/englishHoursAgo.png)<br><br>

```dart
ZTimeAgo().getTimeAgo(
    date: DateTime.now(),
),
```
![img](assets/img/kurdishNow.png)<br><br>

```dart
ZTimeAgo().getTimeAgo(
    date: DateTime.now(),
    language: Language.arabic,
),
```
![img](assets/img/arabicNow.png)<br><br>

```dart
ZTimeAgo().getTimeAgo(
    date: DateTime.now(),
    language: Language.english,
),
```
![img](assets/img/englishNow.png)<br><br><br>

## Bugs And Issues

In case of having any issues, feel free to open an <a href="https://github.com/zakarya0/z_time_ago/issues/new">issue</a>, & if you think that the library needs a feature let me know by adding it in this <a href="https://github.com/zakarya0/z_time_ago/issues/new?template=feature.md">link</a>