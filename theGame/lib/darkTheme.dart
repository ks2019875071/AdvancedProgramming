import 'package:flutter/material.dart';

class darkTheme {
  ThemeData themedata = ThemeData(

      appBarTheme: AppBarTheme(
        color: HSLColor.fromAHSL(1, 243, 0.45, 0.15).toColor(),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: HSLColor.fromAHSL(1, 317, 0.25, 0.45).toColor(),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: Colors.teal,
        ),
      ),
      scaffoldBackgroundColor: HSLColor.fromAHSL(1, 243, 0.30, 0.20).toColor(),
      textTheme: TextTheme(
        bodyText1: TextStyle(),
        bodyText2: TextStyle(fontSize: 15),
      ).apply(
        bodyColor: Colors.teal[500],
      ),
      iconTheme: IconThemeData(
        color: HSLColor.fromAHSL(1, 38, 0.65, 0.60).toColor()
      )
  );
}