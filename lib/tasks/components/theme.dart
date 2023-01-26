import 'package:flutter/material.dart';

final theme = ThemeData(
    appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromRGBO(40, 42, 55, 1),
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromRGBO(40, 42, 55, 1)),
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Color.fromRGBO(40, 42, 55, 1)))));
