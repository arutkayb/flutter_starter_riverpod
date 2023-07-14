import 'package:flutter/material.dart';

final class CustomStyleColor {
  static final ThemeData colorScheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  );

  static final primary = colorScheme.colorScheme.primary;
  static final secondary = colorScheme.colorScheme.secondary;
  static final background = colorScheme.colorScheme.background;
  static final error = colorScheme.colorScheme.error;
}
