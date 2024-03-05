import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeHelper {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    brightness: Brightness.light,
    // pop menu style
    popupMenuTheme: const PopupMenuThemeData(
      color: Colors.white,
      surfaceTintColor: Colors.transparent
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: Color(0xFFFFFFFF),
      surfaceTintColor: Colors.transparent
    ),
    // text field style
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(6),
      hintStyle: GoogleFonts.vazirmatn(fontSize : 16,fontWeight : FontWeight.w400,color : Colors.black54),
      filled: true,
      fillColor: const Color(0xFFB9C7FF),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF0B40FF),
      primaryContainer: Color(0xFF466FFF),
      onPrimary: Color(0xFF466FFF),
      tertiary: Color(0xFFC4C4C4),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFF0B40FF),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFF8F8F8),
      ),
    // elevated button style
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Color(0xFF466FFF)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )
        ),
        elevation: const MaterialStatePropertyAll(0),
        minimumSize: const MaterialStatePropertyAll(Size(double.infinity,48))
      )
    ),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.vazirmatn(fontSize : 16,fontWeight : FontWeight.w700,color : const Color(0xFF030E35)),
      labelSmall: GoogleFonts.vazirmatn(fontSize : 12,fontWeight : FontWeight.w400,color : Colors.grey),
      labelLarge: GoogleFonts.vazirmatn(fontSize : 12,fontWeight : FontWeight.w700),
      bodySmall: GoogleFonts.vazirmatn(fontSize : 12,fontWeight : FontWeight.w500),
      bodyMedium: GoogleFonts.vazirmatn(fontSize : 16,fontWeight : FontWeight.w500),
    ),
    useMaterial3: true,
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    dialogTheme: const DialogTheme(
        backgroundColor: Color(0xFF030E35),
        surfaceTintColor: Colors.transparent
    ),
    // text field style
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(6),
      filled: true,
      hintStyle: GoogleFonts.vazirmatn(fontSize : 16,fontWeight : FontWeight.w400,color : Colors.white),
      fillColor:  const Color(0x80B2C5FF),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    // elevated button style
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Color(0xFF466FFF)),
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )
            ),
            elevation: const MaterialStatePropertyAll(0),
            minimumSize: const MaterialStatePropertyAll(Size(double.infinity,48))
        )
    ),
    // pop menu style
    popupMenuTheme: const PopupMenuThemeData(
        color: Color(0xFF21263A),
        surfaceTintColor: Colors.transparent
    ),
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
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF03134F),
    ),
    useMaterial3: true,
    textTheme: TextTheme(
        titleSmall: GoogleFonts.vazirmatn(fontSize : 16,fontWeight : FontWeight.w700,color :  Colors.white),
        labelSmall: GoogleFonts.vazirmatn(fontSize : 12,fontWeight : FontWeight.w400,color : Colors.grey),
      labelLarge: GoogleFonts.vazirmatn(fontSize : 12,fontWeight : FontWeight.w700),
      bodyMedium: GoogleFonts.vazirmatn(fontSize : 16,fontWeight : FontWeight.w500,color : const Color(0xFFF8F8F8)),
      bodySmall: GoogleFonts.vazirmatn(fontSize : 12,fontWeight : FontWeight.w500),
    ),
  );

}

