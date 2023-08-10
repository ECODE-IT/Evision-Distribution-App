import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xFF1EBA84);
const Color scaffoldBackgroundColor = Color(0xFFEAEAEA);
const Color mainAppButtonBackgroundColor = Color(0xff1ED291);
const Color secondaryTextColor = Color(0xff797979);

const double mainAppButtonHeight = 37.0;
const double mainAppButtonWidth = 171.0;

const double secondaryAppButtonHeight = 25.0;
const double secondaryAppButtonWidth = 141.0;

const double tertiaryAppButtonHeight = 48.0;
const double tertiaryAppButtonWidth = 234.0;

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme:
        ColorScheme.fromSeed(seedColor: primaryColor, primary: primaryColor),
    textTheme: GoogleFonts.latoTextTheme(),
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    useMaterial3: true,
  );

  static TextStyle titleStyle =
      const TextStyle(fontWeight: FontWeight.w900, fontSize: 17);
  static TextStyle subtitleStyle =
      const TextStyle(fontSize: 10, color: Color(0xFF797979));

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

  static BoxDecoration containerBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(11.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        blurRadius: 13,
        offset: const Offset(0, 4),
      ),
    ],
  );

  static ButtonStyle appButtonStyle = FilledButton.styleFrom(
    backgroundColor: mainAppButtonBackgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  );

  static TextStyle appButtonDisplayTextStyle =
      const TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Lato');

  static InputDecoration mainTextInputDecoration = InputDecoration(
    contentPadding: const EdgeInsets.fromLTRB(20, 3, 20, 3),
    isDense: true,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100.0),
      borderSide: const BorderSide(color: primaryColor),
    ),
    enabledBorder: OutlineInputBorder(
      // borderRadius: BorderRadius.circular(100.0),
      borderSide: BorderSide(color: Colors.grey[400]!),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100.0),
      borderSide: const BorderSide(color: Colors.red, width: 2.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100.0),
      borderSide: const BorderSide(color: Colors.red, width: 2.0),
    ),
  );

  static TextStyle mainTextInputStyle = const TextStyle(fontSize: 12.0);
}
