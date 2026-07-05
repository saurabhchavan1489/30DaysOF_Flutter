import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primaryColor: const Color.fromARGB(255, 39, 39, 205),
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: Theme.of(
        context,
      ).textTheme.titleLarge?.copyWith(color: Colors.black),
      toolbarTextStyle: Theme.of(
        context,
      ).textTheme.bodyMedium?.copyWith(color: Colors.black),
    ),
    textTheme: GoogleFonts.latoTextTheme(),
  );

  static ThemeData? darkTheme(BuildContext context) {}
}
