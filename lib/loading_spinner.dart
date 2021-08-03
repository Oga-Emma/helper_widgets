import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'empty_space.dart';

class LoadingSpinner extends StatelessWidget {
  const LoadingSpinner({
    Key? key,
    this.color,
    this.size,
    this.showText = false,
    this.text = "Loading...",
  }) : super(key: key);

  final Color? color;
  final double? size;
  final bool showText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SpinKitRing(
          size: 24,
          color: color ?? Theme.of(context).primaryColor.withOpacity(.4),
          lineWidth: 2.0,
        ),
        Visibility(
            visible: showText,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text('$text'),
              EmptySpace(),
            ]))
      ],
    )
        /*SpinKitFadingCube(
        // color: color ?? kPrimaryColor,
        size: size ?? 32.0,
        itemBuilder: (_, int i) {
          if (color != null) {
            return _box(color);
          }
          return i.isEven
              ? _box(ColorUtils.colorPrimary.withOpacity(.4))
              : _box(ColorUtils.colorPrimary);
        },
      ),*/
        );
  }

  Widget _box(Color color) {
    return DecoratedBox(
      decoration: BoxDecoration(color: color),
    );
  }
}
