import 'package:flutter/material.dart';

class DireccionesScreen extends StatelessWidget {
  const DireccionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* No retorna un scaffold, porque solo cambiaremos el contenido que esta dentro de esto. */
    return const Center(
      child: Text('Direcciones page'),
    );
  }
}
