import 'package:flutter/material.dart';
import 'package:helper_widgets/responsive/responsive_builder.dart';

class ResponsiveWidget extends StatelessWidget {
  ResponsiveWidget({required this.sm, this.md, this.lg, this.xl});
  final Widget sm;
  final Widget? md;
  final Widget? lg;
  final Widget? xl;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, deviceInfo) {
      if (deviceInfo.isExtraLargeScreen) {
        if (xl != null) return xl;
        if (lg != null) return lg;
        if (md != null) return md;
        return sm;
      }

      if (deviceInfo.isLargeScreen) {
        if (lg != null) return lg;
        if (md != null) return md;
        return sm;
      }

      if (md != null && deviceInfo.isMediumScreen) return md;

      return sm;
    });
  }
}
