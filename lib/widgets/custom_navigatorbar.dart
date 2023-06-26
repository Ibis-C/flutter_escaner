import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_inventarios_fisicos/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    // indicamos que provider estamos utilizando. En este caso UIProvider, que esta entre <>.
    final uiProvider = Provider.of<UIProvider>(context);

    // obtenemos el valor que tiene asignado el parametro que estamos utilizando.
    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      //Al hacer clic(onTap) en un item(boton) de la barra de navegacion, este regresa un int que indica que item se preciono
      onTap: (int
              i) => /* setter del uiProvider. Cambiamos el valor de la propiedad _selectedMenuOpt de la clase UIProvider */
          uiProvider.selectedMenuOpt = i,

      // CurrentIndex indica que item esta seleccionado
      currentIndex: currentIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code_scanner),
          label: 'QR',
        ),
        BottomNavigationBarItem(
          icon: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.document_scanner_outlined,
            ),
          ),
          label: 'Codigo de Barras',
        )
      ],
    );
  }
}
