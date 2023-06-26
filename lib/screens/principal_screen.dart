import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:provider/provider.dart';

import 'package:flutter_inventarios_fisicos/providers/ui_provider.dart';
import 'package:flutter_inventarios_fisicos/screens/screens.dart';

class PrincipalScreen extends StatelessWidget {
  const PrincipalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //crea la barra lateral y agrega automaticamente el boton de sandwich en el barraSuperior
      drawer: NavigationDrawer(
        children: <Widget>[
          SingleChildScrollView(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
            ),
            child: const Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListTile(
                  leading: Icon(Icons.person_outline_sharp),
                  title: Text('Usuario'),
                ),
                ListTile(
                  leading: Icon(Icons.door_back_door_outlined),
                  title: Text('Cerrar sesión'),
                )
              ],
            ),
          ),
          /* DrawerHeader(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('Hola'),
        ) */
        ],
      ),
      appBar: AppBar(
        titleTextStyle: const TextStyle(fontSize: 15.0),
        title: const Text('Nuevo'),
      ),
      body: _HomePageBody(),
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  //El provider ya esta en el contex. Ya es un valor que se encuentra ahí el cual podemos usar actualmente.
  Widget build(BuildContext context) {
    // Obtener el selected menu opt
    final uiProvider = Provider.of<UIProvider>(context);

    // guardamos el valor actual de la propiedad selectedMenuOpt para usarlo en el switch.
    final currentIndex = uiProvider.selectedMenuOpt;

    //Regresar un widget de manera condicional.
    switch (currentIndex) {
      case 0:
        return const DireccionesScreen();
      case 1:
        return const CodigosScreen();
      default:
        return const CodigosScreen();
    }
  }
}
