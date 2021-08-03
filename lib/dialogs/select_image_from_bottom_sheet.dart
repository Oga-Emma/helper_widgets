import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helper_widgets/dialogs/select_image_from_dialog.dart';
import 'package:helper_widgets/empty_space.dart';

Future<ImageFrom?> showChooserDialog(BuildContext context,
    {Function()? onClosing}) async {
  if (Platform.isIOS) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => CupertinoActionSheet(
              title: Text("Choose image from"),
              actions: <Widget>[
                CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context, ImageFrom.camera);
                    },
                    child: Text("Camera")),
                CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context, ImageFrom.camera);
                    },
                    child: Text("Gallery")),
                CupertinoActionSheetAction(
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context, ImageFrom.camera);
                    },
                    child: Text("Gallery"))
              ],
            ));
  } else {
    return showModalBottomSheet(
        context: context,
        builder: (context) => BottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              builder: (BuildContext context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
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
                );
              },
              onClosing: onClosing!,
            ));
  }
}
