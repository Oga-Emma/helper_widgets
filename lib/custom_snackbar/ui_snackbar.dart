import 'package:flutter/material.dart';
import 'package:helper_widgets/custom_snackbar/ui_loading_snackbar.dart';

abstract class UISnackBarProvider {
  GlobalKey<ScaffoldState> get scaffoldKey;

  void showInSnackBar(
    BuildContext context,
    String value, [
    Duration duration = const Duration(milliseconds: 4000),
  ]) {
    closeLoadingSnackBar();
    scaffoldKey.currentState?.showSnackBar(
      SnackBar(
        backgroundColor: Theme.of(context).accentColor,
        content: Text(
          value,
          textAlign: TextAlign.center,
//          style: mkFontMedium(14.0, Colors.white),
        ),
        duration: duration,
      ),
    );
  }

  void closeLoadingSnackBar() {
    scaffoldKey.currentState?.hideCurrentSnackBar();
  }

  void showLoadingSnackBar(BuildContext context, [Widget? content]) {
    closeLoadingSnackBar();
    scaffoldKey.currentState?.showSnackBar(
      UILoadingSnackBar(
        context,
        content: content,
      ),
    );
  }
}
