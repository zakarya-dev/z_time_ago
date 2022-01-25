library z_time_ago;

import 'package:flutter/material.dart';
import 'src/data.dart';

enum Language {
  arabic,
  english,
  kurdish,
}

class ZTimeAgo {
  String getTimeAgo({
    required dynamic date,
    Language language = Language.kurdish,
  }) {
    DateTime inputDate = DateTime.now();
    if (date.runtimeType == String) {
      inputDate = DateTime.parse(date);
    } else if (date.runtimeType == DateTime) {
      inputDate = date;
    } else {
      debugPrint('Enter a valid type');
      return '';
    }
    String message = '';
    var currentDate = DateTime.now();
    var difference = currentDate.difference(inputDate);
    Map data = Data().getData(language);
    if (difference.inSeconds < 0) {
      debugPrint('the date you entered is after current date');
      return '';
    } else {
      if (difference.inSeconds < 60) {
        message = data['keys']['now'];
      } else if (difference.inSeconds >= 60 && difference.inSeconds < 120) {
        message = data['keys']['aMinuteAgo'];
      } else if (difference.inMinutes >= 1 && difference.inMinutes < 60) {
        if (language == Language.arabic) {
          message =
              '${data['keys']['prefix']} ${data['numbers']['${difference.inMinutes}']} ${data['keys']['minutesAgo']}';
        } else {
          message =
              '${data['numbers']['${difference.inMinutes}']} ${data['keys']['minutesAgo']}';
        }
      } else if (difference.inHours == 1) {
        message = data['keys']['anHourAgo'];
      } else if (difference.inHours >= 1 && difference.inHours < 24) {
        if (language == Language.arabic) {
          message =
              '${data['keys']['prefix']} ${data['numbers']['${difference.inHours}']} ${data['keys']['hoursAgo']}';
        } else {
          message =
              '${data['numbers']['${difference.inHours}']} ${data['keys']['hoursAgo']}';
        }
      } else if (difference.inDays == 1) {
        message = data['keys']['aDayAgo'];
      } else if (difference.inDays >= 2 && difference.inDays < 7) {
        if (language == Language.arabic) {
          message =
              '${data['keys']['prefix']} ${data['numbers']['${difference.inDays}']} ${data['keys']['daysAgo']}';
        } else {
          message =
              '${data['numbers']['${difference.inDays}']} ${data['keys']['daysAgo']}';
        }
      } else if (difference.inDays >= 7 && difference.inDays < 14) {
        message = data['keys']['aWeekAgo'];
      } else if (difference.inDays >= 14 && difference.inDays < 30) {
        if (language == Language.arabic) {
          message =
              '${data['keys']['prefix']} ${data['numbers']['${difference.inDays ~/ 7.toInt()}']} ${data['keys']['weeksAgo']}';
        } else {
          message =
              '${data['numbers']['${difference.inDays ~/ 7.toInt()}']} ${data['keys']['weeksAgo']}';
        }
      } else if (difference.inDays >= 30 && difference.inDays < 60) {
        message = data['keys']['aMonthAgo'];
      } else if (difference.inDays >= 60 && difference.inDays < 365) {
        if (language == Language.arabic) {
          message =
              '${data['keys']['prefix']} ${data['numbers']['${difference.inDays ~/ 30.toInt()}']} ${data['keys']['monthsAgo']}';
        } else {
          message =
              '${data['numbers']['${difference.inDays ~/ 30.toInt()}']} ${data['keys']['monthsAgo']}';
        }
      } else if (difference.inDays >= 365 && difference.inDays < 731) {
        message = data['keys']['aYearAgo'];
      } else {
        String finalDate = inputDate.toString().split(' ')[0];
        var splittedDate = finalDate.split('-');
        String day = '';
        String month = '';
        String year = '';
        if (splittedDate[2][0] == '0') {
          day = data['numbers']['0'] + data['numbers'][splittedDate[2][1]];
        } else {
          day = data['numbers'][splittedDate[2]];
        }
        if (splittedDate[1][0] == '0') {
          month = data['numbers']['0'] + data['numbers'][splittedDate[1][1]];
        } else {
          month = data['numbers'][splittedDate[1]];
        }
        String firstPartOfYear =
            data['numbers'][splittedDate[0].substring(0, 2)];
        String secondPartOfYear = splittedDate[0].substring(2, 4);
        if (secondPartOfYear[0] == '0') {
          secondPartOfYear =
              data['numbers']['0'] + data['numbers'][secondPartOfYear[1]];
        } else {
          secondPartOfYear = data['numbers'][splittedDate[0].substring(2, 4)];
        }
        year = '$firstPartOfYear$secondPartOfYear';
        message = '$year-$month-$day';
      }
      return message;
    }
  }
}
