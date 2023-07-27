import 'package:flutter/material.dart';

import 'theme_colors.dart';

ThemeData AppTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: ThemeColor.primary,
  primarySwatch: ThemeColor.primary,
  cardColor: ThemeColor.cardColor,
  textTheme: const TextTheme(
    bodySmall: TextStyle(fontSize: 16.0),
    bodyLarge: TextStyle(fontSize: 28.0),
  ),
);
