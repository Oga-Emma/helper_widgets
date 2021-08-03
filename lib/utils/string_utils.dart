import 'package:intl/intl.dart';

class StringUtils {
  static const naira = nairaSign;

  static double? parseMoney(var money) {
    if (money == null) {
      return money;
    }
    if (money is double) {
      return money;
    }

    return double.tryParse("$money");
  }

  static int? parseInt(var money) {
    if (money == null) {
      return money;
    }
    if (money is double) {
      return money.toInt();
    }
    if (money is int) {
      return money;
    }

    return int.tryParse("$money");
  }

  static String toTitleCase(String sentence) {
    try {
      var split = sentence.trim().split(' ');

      return split
          .map(
              (word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
          .toList()
          .join(" ");
    } catch (err) {
      return sentence;
    }
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

  static String? getInitials(String name) {
    try {
      var initial;
      var split = "$name".trim().split(' ');

      if (split.length > 1) {
        var i1 = split[0][0];
        var i2 = split[1][0] == '&' ? split[2][0] : split[1][0];
        initial = '$i1$i2';
      } else {
        initial = "$name".substring(0, 2);
      }

      return initial.toUpperCase();
    } catch (err) {
      return name;
    }
  }

  static capitalizeFirst(String text) {
    try {
      var split = text.trim().split(' ');
      var newList = split
          .map((st) =>
              "${st[0].toUpperCase()}${st.substring(1, st.length).toLowerCase()}")
          .toList();

      return newList.join(' ');
    } catch (err) {
      return text;
    }
  }

  static isNotEmpty(String? text) {
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

const nairaSign = '₦';

double? parseMoney(var money) {
  if (money == null) {
    return money;
  }
  if (money is double) {
    return money;
  }

  return double.tryParse("$money");
}

int? parseInt(var money) {
  if (money == null) {
    return money;
  }
  if (money is double) {
    return money.toInt();
  }
  if (money is int) {
    return money;
  }

  return int.tryParse("$money");
}

String toTitleCase(String sentence) {
  try {
    var split = sentence.trim().split(' ');

    return split
        .map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
        .toList()
        .join(" ");
  } catch (err) {
    return sentence;
  }
}

var formatter = new NumberFormat("#,###");
String formatMoney(var amount, {bool showDecimal = true, var currency = '₦'}) {
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

extension strUtilExt on String {
  String? getInitials() {
    return StringUtils.getInitials(this);
  }

  capitalizeFirst() {
    return StringUtils.capitalizeFirst(this);
  }

  isNotEmpty() {
    return StringUtils.isNotEmpty(this);
  }

  isEmpty() {
    return StringUtils.isEmpty(this);
  }

  isEqualsIgnoreCase(String t2) {
    return StringUtils.isEqualsIgnoreCase(this, t2);
  }
}
