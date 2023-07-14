import 'package:flutter/material.dart';
import 'package:flutter_starter_riverpod/common/style/custom_style_size.dart';

class CustomStyleText {
  static double get textSizeSmall => 3.textSizeUnit;

  static double get textSizeMedium => 4.textSizeUnit;

  static double get textSizeLarge => 6.textSizeUnit;

  static double get textSizeXLarge => 10.textSizeUnit;

  static TextStyle get h1 => TextStyle(
        color: Colors.black,
        fontSize: textSizeXLarge,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get h2 => TextStyle(
        color: Colors.black,
        fontSize: textSizeLarge,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get h3 =>
      TextStyle(color: Colors.black, fontSize: textSizeMedium);

  static TextStyle get p =>
      TextStyle(color: Colors.black, fontSize: textSizeSmall);

  static TextStyle get bigButton => TextStyle(
        color: Colors.black,
        fontSize: textSizeLarge,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get button => TextStyle(
        color: Colors.black,
        fontSize: textSizeMedium,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get buttonUnderline => button.copyWith(
        decoration: TextDecoration.underline,
      );

  static TextStyle get buttonDashed => button.copyWith(
        decorationStyle: TextDecorationStyle.dashed,
      );
}
