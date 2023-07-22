import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = const Color(0xFF1EBA84);
Color scaffoldBackgroundColor = const Color(0xFFEAEAEA);

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor, primary: primaryColor),
    textTheme: GoogleFonts.latoTextTheme(),
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    useMaterial3: true,
  );

  static TextStyle titleStyle = const TextStyle(fontWeight: FontWeight.w900, fontSize: 17);
  static TextStyle subtitleStyle = const TextStyle(fontSize: 10, color: Color(0xFF797979));

  static BoxDecoration customizedCardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.4),
        spreadRadius: 3,
        blurRadius: 5,
        offset: const Offset(0, 0), // changes position of shadow
      ),
    ],
  );
}
