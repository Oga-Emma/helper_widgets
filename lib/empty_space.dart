import 'package:flutter/cupertino.dart';

class EmptySpace extends StatelessWidget {
  EmptySpace({this.multiple = 1});
  final multiple;

  @override
  Widget build(BuildContext context) {
    final double vhsize = 8.0 * multiple;
    return SizedBox(
      height: vhsize,
      width: vhsize,
    );
  }
}
