import 'package:flutter/material.dart';
import 'package:flutter_inventarios_fisicos/providers/ui_provider.dart';

import 'package:flutter_inventarios_fisicos/routes/routes.dart';
import 'package:flutter_inventarios_fisicos/themes/tema_genera.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // EL provider nos sirve para decirle a la aplicación que vaya a buscar en el arbol de widgets la clase llamada UIProvider y con eso, ya se tendra acceso a la propiedad que los widgets escuchan.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          //hace una instancia de la clase UIProvider cuando aun no existe.
          create: (_) => UIProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Soferp Inventario',
        // initialRoute: siempre tiene que ir con routes:, ya que las ruta que se especifique la buscara en routes:
        initialRoute: Routes.rutaInicial,
        routes: Routes.routes,
        theme: TemaGeneral.lightTheme,
      ),
    );
  }
}
