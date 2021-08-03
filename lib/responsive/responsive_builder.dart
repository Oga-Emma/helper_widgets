import 'package:flutter/material.dart';
import 'package:helper_widgets/responsive/device_size_info.dart';

export 'package:helper_widgets/responsive/device_size_info.dart';

class ResponsiveBuilder extends StatelessWidget {
  ResponsiveBuilder({required this.builder, this.key});
  Key? key;
  final Widget? Function(
          BuildContext context, DeviceSizeInformation deviceSizeInformation)
      builder;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        key: key,
        builder: (context, constraint) {
          DeviceSizeInformation deviceSizeInfo =
              DeviceSizeInformation(context, constraint: constraint);
          return builder(context, deviceSizeInfo)!;
        });
  }
}
