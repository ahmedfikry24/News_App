import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    iconTheme: IconThemeData(
      color: Colors.grey[850],
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontFamily: 'cairo',
          fontWeight: FontWeight.bold),
      backgroundColor: Colors.blue[900],
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.blue[900],
        statusBarIconBrightness: Brightness.light,
      ),
      elevation: 0,
    ),
    //////////////////////////////////////////////////////////
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.blue[900],
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        color: Colors.blue[500],
      ),
    ),
    ////////////////////////////////////////////////////////////
    textTheme: TextTheme(
      bodyText1: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontFamily: 'cairo',
          color: Colors.black),
      subtitle1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        fontFamily: 'cairo',
        color: Colors.grey[800],
      ),
      subtitle2: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'cairo',
          color: Colors.grey),
    ),
  );

  static ThemeData dark = ThemeData(
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.grey[800],
    appBarTheme: AppBarTheme(
      titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontFamily: 'cairo',
          fontWeight: FontWeight.bold),
      backgroundColor: Colors.grey[850],
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.grey[850],
        statusBarIconBrightness: Brightness.light,
      ),
      elevation: 0,
    ),

    //////////////////////////////////////////////////////////
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        backgroundColor: Colors.grey[850]),
    ////////////////////////////////////////////////////////////
    textTheme: const TextTheme(
      bodyText1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontFamily: 'cairo',
          color: Colors.white),
      subtitle1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        fontFamily: 'cairo',
        color: Colors.white60,
      ),
      subtitle2: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'cairo',
          color: Colors.white30),
    ),
  );
}
