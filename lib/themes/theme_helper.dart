import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeHelper {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    brightness: Brightness.light,

    colorScheme: const ColorScheme.light(
      primary: Color(0xFF0B40FF),
      primaryContainer: Color(0xFF466FFF),
      onPrimary: Color(0xFF466FFF),
      tertiary: Color(0xFFC4C4C4),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFF0B40FF),
    ),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.vazirmatn(fontSize : 16,fontWeight : FontWeight.w700,color : const Color(0xFF030E35)),
      labelSmall: GoogleFonts.vazirmatn(fontSize : 12,fontWeight : FontWeight.w400,color : Colors.grey),
      bodySmall: GoogleFonts.vazirmatn(fontSize : 12,fontWeight : FontWeight.w500),
    ),
    useMaterial3: true,
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF030E35),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF466FFF),
      primaryContainer: Color(0xFF466FFF),
      onPrimary: Color(0xFFFFFFFF),
      tertiary: Color(0xFFC4C4C4),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFF466FFF),
    ),
    useMaterial3: true,
    textTheme: TextTheme(
        titleSmall: GoogleFonts.vazirmatn(fontSize : 16,fontWeight : FontWeight.w700,color :  Colors.white),
        labelSmall: GoogleFonts.vazirmatn(fontSize : 12,fontWeight : FontWeight.w400,color : Colors.grey),
      bodySmall: GoogleFonts.vazirmatn(fontSize : 12,fontWeight : FontWeight.w500),
    ),
  );

}