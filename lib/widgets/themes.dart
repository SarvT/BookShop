import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      buttonColor: Colors.white,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: MyTheme.creamColor,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
          brightness: Brightness.light));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      // primarySwatch: ,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      accentColor: MyTheme.lilBlue,
      buttonColor: MyTheme.lilGrey,
      canvasColor: MyTheme.lilGrey,
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme));

  // colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
  static Color lilWhite = Color(0xfff4f4f9);
  // static Color lilGrey = Color(0xff2f4550);
  // static Color lilGrey = Color(0xff022534);
  static Color lilGrey = Color(0xff17181d);
  static Color lilBlue = Color(0xff2c2c2c);
  static Color accentBlueColour = Color(0xffacb3bd);
}
