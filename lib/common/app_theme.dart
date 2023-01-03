import 'package:flutter/material.dart';

enum AppTheme { darkTheme, lightTheme }

//
// for black theme
class AppThemes {
  static final appThemeData = {
    AppTheme.darkTheme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 42, 37, 37),
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        dividerColor: Colors.black54,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.white,
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
        focusColor: const Color.fromARGB(255, 255, 255, 255),
        textTheme: const TextTheme(
          titleMedium: TextStyle(color: Colors.white),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.grey, unselectedItemColor: Colors.white),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.grey,
        )),

    //TODO: something
    ///
    ///
    ///
    ///for light theme

    AppTheme.lightTheme: ThemeData(
      appBarTheme: const AppBarTheme(
          color: Colors.grey, toolbarTextStyle: TextStyle(color: Colors.white)),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white,
      brightness: Brightness.light,
      dividerColor: const Color(0xff757575),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(color: Colors.white)),
          backgroundColor:
              MaterialStateProperty.all(const Color.fromARGB(255, 4, 150, 247)),
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
      ),
      textTheme: const TextTheme(
        titleMedium: TextStyle(color: Colors.black),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white),
    ),
  };
}
