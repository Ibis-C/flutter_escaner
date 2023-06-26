import 'package:flutter/material.dart';

import '../screens/screens.dart';

class Routes {
  static const String rutaInicial = 'login';
  static const String principal = 'principal';
  static Map<String, Widget Function(BuildContext)> routes = {
    // ctrl + k + c: comentar línea de código. ctrl + k + u: descomentar línea de código.
    'login': (BuildContext context) => const LoginScreen(),
    'principal': (BuildContext context) => const PrincipalScreen()
  };
}
