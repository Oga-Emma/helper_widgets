import 'package:flutter/material.dart';

class HideKeyboardWidget extends StatelessWidget {
  HideKeyboardWidget({required this.child}) : assert(child != null);
  Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () => hideKeyboard(context), child: child);
  }
}

hideKeyboard(BuildContext context) {
  if (WidgetsBinding.instance!.window.viewInsets.bottom > 0.0) {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
      return true;
    }
  }
  return false;
}
