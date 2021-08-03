import 'package:flutter/material.dart';

class DeviceSizeInformation {
  double? _screenWidth;
  double? _screenHeight;
  Orientation? _orientation;

  late double _safeAreaHorizontal;
  late double _safeAreaVertical;

  double? get screenWidth => _screenWidth;
  double? get screenHeight => _screenHeight;
  Orientation? get orientation => _orientation;

  bool get isGreaterThanMedium => screenWidth! > mdSize;
  bool get isGreaterThanSemiMedium => screenWidth! > sMdSize;
  bool get isGreaterThanSmall => screenWidth! > smSize;
  bool get isGreaterThanXSmall => screenWidth! > xSmSize;

  bool get isLessThanMedium => screenWidth! < mdSize;
  bool get isLessSemiMedium => screenWidth! < sMdSize;
  bool get isLessThanSmall => screenWidth! < smSize;
  bool get isLessThanXSmall => screenWidth! < xSmSize;

  double get percentWidth => screenWidth! / 100;
  double get percentHeight => screenHeight! / 100;
  double get safePercentWidth => (screenWidth! - _safeAreaHorizontal) / 100;
  double get safePercentHeight => (screenHeight! - _safeAreaVertical) / 100;

  final xSmSize = 480;
  final smSize = 680;
  final sMdSize = 900;
  final mdSize = 1200;
  final lgSize = 1600;

  bool get isXSmallScreen => screenWidth! <= xSmSize;
  bool get isSmallScreen => screenWidth! > xSmSize && screenWidth! <= smSize;
  bool get isMediumScreen => screenWidth! > smSize && screenWidth! <= mdSize;
  bool get isLargeScreen => screenWidth! >= mdSize && screenWidth! <= lgSize;
  bool get isExtraLargeScreen => screenWidth! > lgSize;

  BoxConstraints? constraint;
  DeviceSizeInformation(BuildContext context, {this.constraint}) {
    final mediaQuery = MediaQuery.of(context);

    this._safeAreaHorizontal =
        mediaQuery.padding.left + mediaQuery.padding.right;
    this._safeAreaVertical = mediaQuery.padding.top + mediaQuery.padding.bottom;

    this._screenWidth = constraint!.maxWidth;
    this._screenHeight = constraint!.maxHeight;
    this._orientation = mediaQuery.orientation;
  }
}
