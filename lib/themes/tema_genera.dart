import 'package:flutter/material.dart';

class TemaGeneral {
  static const Color general = Color(0xFFD9E8FF);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //colo primario
    primaryColor: general,

    //tema de todos los AppBar sin
    appBarTheme: const AppBarTheme(color: general, elevation: 0.0),

    //cambiar color ActionsButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF037DB2),
    ),

    //cambiar todo el color de fondo
    scaffoldBackgroundColor: general,
  );
}
