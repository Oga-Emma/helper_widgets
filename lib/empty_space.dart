import 'package:flutter/cupertino.dart';

class EmptySpace extends StatelessWidget {
  EmptySpace({this.multiple = 1, this.horizontal = false, this.both = false});
  final multiple;
  bool horizontal;
  bool both;

  @override
  Widget build(BuildContext context) {
    final double vhsize = 8.0 * multiple;
    if (both) {
      return SizedBox(
        height: vhsize,
        width: vhsize,
      );
    }

    return SizedBox(
      height: horizontal ? 0 : vhsize,
      width: horizontal ? vhsize : 0,
    );
  }
}
