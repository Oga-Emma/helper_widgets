import 'package:flutter/material.dart';
import 'package:helper_widgets/responsive/device_size_info.dart';

export 'package:helper_widgets/responsive/device_size_info.dart';

class ResponsiveBuilder extends StatelessWidget {
  ResponsiveBuilder({@required this.builder, this.key});
  Key key;
  final Widget Function(
          BuildContext context, DeviceSizeInformation deviceSizeInformation)
      builder;
  @override
  Widget build(BuildContext context) {
    DeviceSizeInformation deviceSizeInfo = DeviceSizeInformation(context);
    return Builder(
        key: key, builder: (context) => builder(context, deviceSizeInfo));
  }
}
