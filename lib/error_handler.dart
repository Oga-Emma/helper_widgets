import 'package:flutter/cupertino.dart';

class ErrorHandler {
  String getErrorMessage(err, [String message = "Internal Error"]) {
    try {
      if (err != null && err.message != null && err.message.isNotEmpty) {
        return err.message;
      }
    } catch (err) {
      debugPrint(err);
    }

    return message;
  }
}
