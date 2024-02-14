import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pr3/data/BaseDatos.dart';

class BotoPersonalitzat extends StatefulWidget {

   const BotoPersonalitzat({super.key});

  @override
  State<BotoPersonalitzat> createState() => _BotoPersonalitzatState();
}

class _BotoPersonalitzatState extends State<BotoPersonalitzat> {
  bool muestraTexto = false;
  final _boxDeHive = Hive.box("gym");
  BaseDeDades bd = BaseDeDades();

  @override
  void initState(){
    
    if(_boxDeHive.get("gym") == null){
      
      bd.crearDadesInicials();
    }else{
       bd.carregarDades();
    }

    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  muestraTexto = !muestraTexto;
                });
              },
              child: Text('Presiona aquí para ver entrenos realizados'),
            ),
            SizedBox(height: 16),
            if (muestraTexto) 
              Text(bd.num.toString()+ " entrenos hechos",
                style: TextStyle(fontSize: 16),
              ),
          ],
        );
  }
}