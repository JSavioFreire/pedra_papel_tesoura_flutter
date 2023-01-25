import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedra_papel_tesoura/theme/theme_colors.dart';

ThemeData theme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: GoogleFonts.raleway().fontFamily,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 15),
    titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ThemeColors.secondary,
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
    ),
  ),
);
