import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appThemeData = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(
      0xFF379936,
    ),
    onPrimary: Colors.white,
    secondary: Color(
      0xFF379936,
    ),
    onSecondary: Colors.white,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
    error: Color(0xFFFF0000),
    onError: Color(0xFFFF0000),
  ),
  textTheme: TextTheme(bodyLarge: GoogleFonts.poppins()),
);
