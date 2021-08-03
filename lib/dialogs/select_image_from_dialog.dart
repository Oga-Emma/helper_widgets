import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helper_widgets/empty_space.dart';

Future<ImageFrom?> showChooserDialog(BuildContext context) async {
  if (Platform.isIOS) {
    return showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              content: Text("Choose image from"),
              actions: <Widget>[
                CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context, ImageFrom.camera);
                    },
                    child: Text("Camera")),
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context, ImageFrom.camera);
                  },
                  child: Text("Gallery"),
                )
              ],
            ));
  } else {
    return showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              contentPadding: EdgeInsets.all(16.0),
//            title: Text("Choose image from"),
              children: <Widget>[
                Text("Choose image from"),
                EmptySpace(),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, ImageFrom.camera);
                  },
                  child: Text("Camera"),
                  shape: StadiumBorder(),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, ImageFrom.gallery);
                  },
                  child: Text("Gallery"),
                  shape: StadiumBorder(),
                )
              ],
            ));
  }
}

enum ImageFrom { camera, gallery }
