import 'package:flutter/material.dart';

final class CustomStyleColor {
  static final ThemeData theme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true
  );

  static final primary = theme.colorScheme.primary;
  static final secondary = theme.colorScheme.secondary;
  static final background = theme.colorScheme.background;
  static final error = theme.colorScheme.error;
}
