import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  // Light Theme
 static ThemeData darkTheme(BuildContext context) => ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color.fromARGB(255, 39, 39, 205),
  scaffoldBackgroundColor: Colors.black,

  fontFamily: GoogleFonts.lato().fontFamily,

  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    elevation: 0,
    centerTitle: true,
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
  ),

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 39, 39, 205),
    brightness: Brightness.dark,
  ),

  textTheme: GoogleFonts.latoTextTheme(
    ThemeData.dark().textTheme,
  ),
);

  static ThemeData? lightTheme(BuildContext context) {
    return null;
  }
}