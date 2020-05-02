import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

showErrorToast(String message) {
  BotToast.showText(text: message, contentColor: Colors.orangeAccent);
}

showSuccessToast(String message) {
  BotToast.showText(text: message, contentColor: Colors.green);
}
