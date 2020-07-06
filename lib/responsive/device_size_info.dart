import 'package:flutter/material.dart';

class DeviceSizeInformation {
  double _screenWidth;
  double _screenHeight;
  Orientation _orientation;

  double _safeAreaHorizontal;
  double _safeAreaVertical;

  double get screenWidth => _screenWidth;
  double get screenHeight => _screenHeight;
  Orientation get orientation => _orientation;

  double get percentWidth => screenWidth / 100;
  double get percentHeight => screenHeight / 100;
  double get safePercentWidth => (screenWidth - _safeAreaHorizontal) / 100;
  double get safePercentHeight => (screenHeight - _safeAreaVertical) / 100;

  final xSmSize = 480;
  final smSize = 680;
  final mdSize = 1000;
  final lgSize = 1600;

  bool get isXSmallScreen => screenWidth <= xSmSize;
  bool get isSmallScreen => screenWidth > xSmSize && screenWidth <= smSize;
  bool get isMediumScreen => screenWidth > smSize && screenWidth <= mdSize;
  bool get isLargeScreen => screenWidth >= mdSize && screenWidth <= lgSize;
  bool get isExtraLargeScreen => screenWidth > lgSize;

  DeviceSizeInformation(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    this._safeAreaHorizontal =
        mediaQuery.padding.left + mediaQuery.padding.right;
    this._safeAreaVertical = mediaQuery.padding.top + mediaQuery.padding.bottom;

    this._screenWidth = mediaQuery.size.width;
    this._screenHeight = mediaQuery.size.height;
    this._orientation = mediaQuery.orientation;
  }
}