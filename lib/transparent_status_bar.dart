import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TransparentStatusBar extends StatelessWidget {
  TransparentStatusBar.light({@required this.child, Key key})
      : super(key: key) {
    this.overlay = SystemUiOverlayStyle.dark;
  }

  TransparentStatusBar.dark({@required this.child, Key key}) : super(key: key) {
    this.overlay = SystemUiOverlayStyle.dark;
  }

  Widget child;
  SystemUiOverlayStyle overlay;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: overlay,
      child: child,
    );
  }
}
