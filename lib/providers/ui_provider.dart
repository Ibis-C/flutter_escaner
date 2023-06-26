import 'package:flutter/material.dart';

// Para notificar a cualquier widget que esta escuchando cuando esto cambie necesitamos la herencia de la clase ChangeNotifier
class UIProvider extends ChangeNotifier {
  int _selectedMenuOpt = 0;

  int get selectedMenuOpt {
    return _selectedMenuOpt;
  }

  set selectedMenuOpt(int i) {
    _selectedMenuOpt = i;
    // cuando se cambie el valor, va a llamar a la siguiente instruccion, que notifica a todos los que estan escuchando
    notifyListeners();
  }
}
