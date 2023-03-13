import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 0,
      textStyle: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Get.theme.colorScheme.primary,
      backgroundColor: Get.theme.colorScheme.secondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: Get.theme.colorScheme.primary),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    hintStyle: GoogleFonts.montserrat(
      fontSize: 14,
      color: Colors.grey.shade300,
      fontWeight: FontWeight.w300,
    ),
    errorStyle: GoogleFonts.montserrat(
      fontSize: 14,
      color: Colors.red,
      fontWeight: FontWeight.w200,
    ),
  ),
  textTheme: TextTheme(bodyLarge: GoogleFonts.poppins()),
);

final ThemeData appDarkThemeData = ThemeData(
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
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 0,
      textStyle: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Get.theme.colorScheme.primary,
      backgroundColor: Get.theme.colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: Get.theme.colorScheme.primary,
        ),
      ),
      textStyle: GoogleFonts.poppins(
        fontSize: 16,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    hintStyle: GoogleFonts.montserrat(
      fontSize: 14,
      color: Colors.grey.shade300,
      fontWeight: FontWeight.w300,
    ),
    errorStyle: GoogleFonts.montserrat(
      fontSize: 14,
      color: Colors.red,
      fontWeight: FontWeight.w200,
    ),
  ),
  textTheme: TextTheme(bodyLarge: GoogleFonts.poppins()),
);
