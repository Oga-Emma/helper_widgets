import 'package:intl/intl.dart';

class DateUtils {
  static var dateFormat = DateFormat("dd MMM, yyyy");
  static var timeFormat = DateFormat("h:mm a");
  static String getFormatedDate(DateTime date) {
    if (date.day == DateTime.now().day) {
      return "Today";
    } else if (date.day == (DateTime.now().day - 1)) {
      return "Yesterday";
    }
    return dateFormat.format(date);
  }

  static String getFormattedTime(DateTime date) {
    return timeFormat.format(date);
  }

  static String getFormatedDateAndTimeFromString(String dateString) {
    try {
      var date = DateTime.parse(dateString);
      return "${getFormatedDate(date)}, ${getFormattedTime(date)}";
    } catch (e) {
      print(e);
      return dateString;
    }
  }

  static String getFormatedDateFromString(String dateString) {
    try {
      var date = DateTime.parse(dateString);
      return "${getFormatedDate(date)}";
    } catch (e) {
      print(e);
      return dateString;
    }
  }

  static String getFormatedTimeFromString(String dateString) {
    try {
      var date = DateTime.parse(dateString);
      return "${getFormattedTime(date)}";
    } catch (e) {
      print(e);
      return dateString;
    }
  }
}
