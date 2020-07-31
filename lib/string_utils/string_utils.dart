import 'package:intl/intl.dart';

class StringUtils {
  static const naira = '₦';

  static double parseMoney(var money) {
    if (money == null) {
      return money;
    }
    if (money is double) {
      return money;
    }

    return double.parse("$money");
  }

  static int parseInt(var money) {
    if (money == null) {
      return money;
    }
    if (money is double) {
      return money.toInt();
    }
    if (money is int) {
      return money;
    }

    return int.parse("$money");
  }

  static String toTitleCase(String sentence) {
    var split = sentence.split(' ');

    return split
        .map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
        .toList()
        .join(" ");
  }

  static var formatter = new NumberFormat("#,###");
  static String formatMoney(var amount,
      {bool showDecimal = true, var currency = '₦'}) {
    try {
      double money;
      if (amount is double) {
        money = double.parse(amount.toStringAsFixed(2));
      } else {
        money = double.parse(double.parse("$amount").toStringAsFixed(2));
      }
      final decimal = '$money'.substring('$money'.lastIndexOf('.'));
      if (decimal.isEmpty) {
        return "$currency${formatter.format(money)}${showDecimal ? '.00' : ''}";
      }

      final main = '$money'.substring(0, '$money'.lastIndexOf('.'));

      return "$currency${formatter.format(double.parse(main))}$decimal";
    } catch (err) {
      return "$currency$amount";
    }

//    return "₦${formatter.format(amount)}.00";
  }

  static String getInitials(String name) {
    var initial;
    var split = "$name".split(' ');

    if (split.length > 1) {
      var i1 = split[0][0];
      var i2 = split[1][0] == '&' ? split[2][0] : split[1][0];
      initial = '$i1$i2';
    } else {
      initial = "$name".substring(0, 2);
    }

    return initial.toUpperCase();
  }

  static capitalizeFirst(String text) {
    var split = text.split(' ');
    var newList = split
        .map((st) =>
            "${st[0].toUpperCase()}${st.substring(1, st.length).toLowerCase()}")
        .toList();

    return newList.join(' ');
  }

  static isNotEmpty(String text) {
    return text != null && text.isNotEmpty;
  }

  static isEmpty(String text) {
    return !isNotEmpty(text);
  }

  static isEqualsIgnoreCase(String t1, String t2) {
    if (t1 == null || t2 == null || t1.isEmpty || t2.isEmpty) {
      return false;
    }

    return t1.toLowerCase() == t2.toLowerCase();
  }
}
