import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'empty_space.dart';

class ErrorHandlerWidget extends StatelessWidget {
  ErrorHandlerWidget(
      {this.message = "Error fetching data", this.color, this.onPress});
  String message;
  Color color;
  Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message, style: TextStyle(color: color ?? Colors.redAccent)),
            EmptySpace(),
            SizedBox(
              height: 30,
              child: OutlineButton(
                  shape: StadiumBorder(),
                  borderSide: BorderSide(color: color ?? Colors.redAccent),
                  onPressed: onPress,
                  child: Text("Retry",
                      style: TextStyle(color: color ?? Colors.redAccent))),
            )
          ],
        ),
      ),
    );
  }
}
