import 'package:flutter/material.dart';
import 'package:news_app/modules/theme/color_palette.dart';
import 'package:google_fonts/google_fonts.dart';
class ApplicationThemeManager
{
 static ThemeData lightTheme = ThemeData(
  primaryColor: ColorPalette.primaryColor,
scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    backgroundColor: ColorPalette.primaryColor,
    iconTheme: const IconThemeData(
        color: Colors.white,
        size: 35
    ),
    titleTextStyle: const TextStyle(
      fontFamily: "Exo",
      fontSize: 22,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35)
        )
    ),
  ),
  textTheme: const TextTheme(
   bodyLarge:TextStyle(
    fontFamily: "Exo",
    fontSize: 24,
    fontWeight: FontWeight.w700,
   ),
   bodyMedium:TextStyle(
    fontFamily: "Exo",
    fontSize: 22,
    fontWeight: FontWeight.w700,
   ),
   bodySmall: TextStyle(
     fontFamily: "Exo",
     fontSize: 22,
     fontWeight: FontWeight.w400,
   ),
    displayLarge: TextStyle(
      fontFamily: "Exo",
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontFamily: "Exo",
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: TextStyle(
      fontFamily: "Exo",
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
        headlineSmall: TextStyle(
        fontFamily: "Exo",
        fontSize: 10,
        fontWeight: FontWeight.w400,
      )
  )
  );
}