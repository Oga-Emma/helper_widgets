import 'package:flutter/cupertino.dart';

class ErrorHandler {
  static String getErrorMessage(err, [String message = "Internal Error"]) =>
      getErrorMessage(err, message);
}

String getErrorMessage(err, [String message = "Internal Error"]) {
  try {
    if (err != null && err.message != null && err.message.isNotEmpty) {
      return err.message;
    }
  } catch (err) {
    debugPrint("$err");
  }

  return message;
}
