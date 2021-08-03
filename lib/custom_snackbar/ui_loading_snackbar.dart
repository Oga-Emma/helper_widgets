import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class UILoadingSnackBar extends SnackBar {
  UILoadingSnackBar(BuildContext context, {Key? key, Widget? content})
      : super(
          key: key,
          backgroundColor:
              content == null ? Colors.white : Theme.of(context).accentColor,
          content: Row(
            mainAxisAlignment: content == null
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              SizedBox.fromSize(
                size: Size(48.0, 24.0),
                child: SpinKitThreeBounce(
                  color: content == null
                      ? Theme.of(context).accentColor
                      : Colors.white,
                  size: 24.0,
                ),
              ),
              SizedBox(width: content == null ? 0.0 : 16.0),
              content == null
                  ? SizedBox()
                  : Expanded(
                      child: DefaultTextStyle(
//                        style: mkFontColor(Colors.white),
                        child: content, style: TextStyle(),
                      ),
                    ),
            ],
          ),
          duration: Duration(days: 1),
        );
}
