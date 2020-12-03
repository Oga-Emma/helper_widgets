import 'package:helper_widgets/string_utils/string_utils.dart';
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

  static String getFormattedTime(DateTime date, [String pattern]) {
    if (StringUtils.isNotEmpty(pattern))
      return DateFormat(pattern).format(date);
    return timeFormat.format(date);
  }

  static String getFormatedDateAndTimeFromString(String dateString,
      [String pattern]) {
    try {
      var date = DateTime.parse(dateString).toLocal();
      if (StringUtils.isNotEmpty(pattern))
        return DateFormat(pattern).format(date);

      return "${getFormatedDate(date)}, ${getFormattedTime(date)}";
    } catch (e) {
      print(e);
      return dateString;
    }
  }

  static String getFormatedDateFromString(String dateString, [String pattern]) {
    try {
      var date = DateTime.parse(dateString).toLocal();
      if (StringUtils.isNotEmpty(pattern))
        return DateFormat(pattern).format(date);
      return "${getFormatedDate(date)}";
    } catch (e) {
      print(e);
      return dateString;
    }
  }

  static String getFormatedTimeFromString(String dateString, [String pattern]) {
    try {
      var date = DateTime.parse(dateString).toLocal();
      if (StringUtils.isNotEmpty(pattern))
        return DateFormat(pattern).format(date);
      return "${getFormattedTime(date)}";
    } catch (e) {
      print(e);
      return dateString;
    }
  }

  static DateTime tryParseLocale(dateString, [String pattern]) {
    return DateTime.parse(dateString).toLocal();
  }
}
