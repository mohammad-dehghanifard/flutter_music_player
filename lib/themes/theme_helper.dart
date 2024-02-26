import 'package:flutter/material.dart';

class ThemeHelper {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF0B40FF),
    ),
    useMaterial3: true,
  );

  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF030E35),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF466FFF),
    ),
    useMaterial3: true,
  );
}