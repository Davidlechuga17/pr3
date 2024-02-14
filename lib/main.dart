import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pr3/pagines/pagina_inicial.dart';

void main() async {
  await Hive.initFlutter();
  var gym = await Hive.openBox("gym");
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