import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

showErrorToast(String message, [Color color]) {
  BotToast.showText(text: message, contentColor: color ?? Colors.orangeAccent);
}

showSuccessToast(String message, [Color color]) {
  BotToast.showText(text: message, contentColor: color ?? Colors.green);
}
