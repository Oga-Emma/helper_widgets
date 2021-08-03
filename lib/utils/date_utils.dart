import 'package:helper_widgets/utils/string_utils.dart';
import 'package:intl/intl.dart';

class DateHelper {
  static var dateFormat = DateFormat("dd MMM, yyyy");
  static var timeFormat = DateFormat("h:mm a");
  static String getFormatedDate(DateTime date,
      {bool localize = false, String? pattern}) {
    if (localize) {
      date = date.toLocal();
    }
    if (date.day == DateTime.now().day) {
      return "Today";
    } else if (date.day == (DateTime.now().day - 1)) {
      return "Yesterday";
    }
    if (StringUtils.isNotEmpty(pattern))
      return DateFormat(pattern).format(date);
    return dateFormat.format(date);
  }

  static String getFormattedTime(DateTime date,
      {bool localize = false, String? pattern}) {
    if (localize) {
      date = date.toLocal();
    }
    if (StringUtils.isNotEmpty(pattern))
      return DateFormat(pattern).format(date);
    return timeFormat.format(date);
  }

  static String getFormatedDateAndTimeFromString(String dateString,
      {bool localize = false, String? pattern}) {
    try {
      var date = DateTime.parse(dateString);

      if (localize) {
        date = date.toLocal();
      }
      if (StringUtils.isNotEmpty(pattern))
        return DateFormat(pattern).format(date);

      return "${getFormatedDate(date)}, ${getFormattedTime(date)}";
    } catch (e) {
      print(e);
      return dateString;
    }
  }

  static String getFormatedDateFromString(String dateString,
      {bool localize = false, String? pattern}) {
    try {
      var date = DateTime.parse(dateString);
      if (localize) {
        date = date.toLocal();
      }
      if (StringUtils.isNotEmpty(pattern))
        return DateFormat(pattern).format(date);
      return "${getFormatedDate(date)}";
    } catch (e) {
      print(e);
      return dateString;
    }
  }

  static String getFormatedTimeFromString(String dateString,
      {bool localize = false, String? pattern}) {
    try {
      var date = DateTime.parse(dateString);
      if (localize) {
        date = date.toLocal();
      }
      if (StringUtils.isNotEmpty(pattern))
        return DateFormat(pattern).format(date);
      return "${getFormattedTime(date)}";
    } catch (e) {
      print(e);
      return dateString;
    }
  }

  static DateTime tryParseLocale(dateString, [String? pattern]) {
    return DateTime.parse(dateString).toLocal();
  }
}

String getFormatedDate(DateTime date, {bool localize = false, String? pattern}) {
  return DateHelper.getFormatedDate(date, pattern: pattern, localize: localize);
}

String getFormattedTime(DateTime date,
    {bool localize = false, String? pattern}) {
  return DateHelper.getFormattedTime(date,
      pattern: pattern, localize: localize);
}

String getFormatedDateAndTimeFromString(String dateString,
    {bool localize = false, String? pattern}) {
  return DateHelper.getFormatedDateAndTimeFromString(dateString,
      pattern: pattern, localize: localize);
}

String getFormatedDateFromString(String dateString,
    {bool localize = false, String? pattern}) {
  return DateHelper.getFormatedDateFromString(dateString,
      pattern: pattern, localize: localize);
}

String getFormatedTimeFromString(String dateString,
    {bool localize = false, String? pattern}) {
  return DateHelper.getFormatedTimeFromString(dateString,
      pattern: pattern, localize: localize);
}

DateTime tryParseLocale(dateString, {bool localize = false, String? pattern}) {
  return DateHelper.tryParseLocale(dateString, pattern);
}

extension dateExt on DateTime {
  String getFormatedDate({bool localize = false, String? pattern}) {
    return DateHelper.getFormatedDate(this,
        pattern: pattern, localize: localize);
  }

  String getFormattedTime({bool localize = false, String? pattern}) {
    return DateHelper.getFormattedTime(this,
        pattern: pattern, localize: localize);
  }
}

extension stringDateExt on String {
  String getFormatedDateAndTimeFromString(
      {bool localize = false, String? pattern}) {
    return DateHelper.getFormatedDateAndTimeFromString(this,
        pattern: pattern, localize: localize);
  }

  String getFormatedDateFromString({bool localize = false, String? pattern}) {
    return DateHelper.getFormatedDateFromString(this,
        pattern: pattern, localize: localize);
  }

  String getFormatedTimeFromString({bool localize = false, String? pattern}) {
    return DateHelper.getFormatedTimeFromString(this,
        pattern: pattern, localize: localize);
  }

  DateTime tryParseLocale({bool localize = false, String? pattern}) {
    return DateHelper.tryParseLocale(this, pattern);
  }
}
