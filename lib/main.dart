import 'package:flutter/material.dart';
import 'package:pr3/pagines/pagina_inicial.dart';

void main() {
  runApp(const Aplicacio());
}

class Aplicacio extends StatelessWidget {
  const Aplicacio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaInicial(),
    );
  }
}