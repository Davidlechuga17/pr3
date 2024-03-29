import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pr3/data/BaseDatos.dart';
import 'package:pr3/pagines/pagina1.dart';

class PaginaInicial extends StatelessWidget {

   final _boxDeHive = Hive.box("gym");
   BaseDeDades bd = BaseDeDades();

   PaginaInicial({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(135, 54, 63, 228),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Gym Progress"),
      ),

      body: Center(
        child: Image.asset('assets/gym.jpg'),   
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () { 
          Navigator.pop(context);
          Navigator.push(
            context, 
            MaterialPageRoute(
            builder: (context) => Segunda()),
          );
        },
        child: Text("Ir"),

        
      ),
    );
  }
}