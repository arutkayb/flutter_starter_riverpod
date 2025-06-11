import 'package:flutter/widgets.dart';

final class CustomStyleSize {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double safeScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
  }

  static double get paddingSmall => 1.paddingSizeUnit;

  static double get paddingMedium => 2.paddingSizeUnit;

  static double get paddingLarge => 3.paddingSizeUnit;

  static double get paddingXLarge => 5.paddingSizeUnit;

  static double get paddingXXLarge => 8.paddingSizeUnit;

  static double get paddingXXXLarge => 13.paddingSizeUnit;

  static EdgeInsetsGeometry get edgeInsetsAllSmall =>
      EdgeInsets.all(paddingSmall);

  static EdgeInsetsGeometry get edgeInsetsAllMedium =>
      EdgeInsets.all(paddingMedium);

  static EdgeInsetsGeometry get edgeInsetsAllLarge =>
      EdgeInsets.all(paddingLarge);

  static EdgeInsetsGeometry get edgeInsetsAllXLarge =>
      EdgeInsets.all(paddingXLarge);

  static BorderRadius get borderRadiusSmall =>
      BorderRadius.all(Radius.circular(2.radiusSizeUnit));

  static BorderRadius get borderRadiusMedium =>
      BorderRadius.all(Radius.circular(4.radiusSizeUnit));

  static BorderRadius get borderRadiusLarge =>
      BorderRadius.all(Radius.circular(6.radiusSizeUnit));
}

extension CustomStyleSizeExtension on num {
  double get iconSizeUnit => this * 5;

  double get paddingSizeUnit => this * 5;

  double get textSizeUnit => this * 4;

  double get radiusSizeUnit => this * 4;
}
