import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pr3/data/BaseDatos.dart';

class Checkboxes extends StatefulWidget {

   Checkboxes({super.key,});

  @override
  State<Checkboxes> createState() => _CheckboxesState();
}

class _CheckboxesState extends State<Checkboxes> {
  final _boxDeHive = Hive.box("gym");
  BaseDeDades bd = BaseDeDades();
   final List<bool> _isCheckedList = List.generate(30, (index) => false);

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
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
        ),
        
        itemCount: _isCheckedList.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text("Dia"),
            value: _isCheckedList[index],
            onChanged: (newValue){
              setState(() {
                _isCheckedList[index] = newValue!;
                if(newValue){
                  bd.sumaDades();
                  
                }else{
                  bd.restarDades();
                  
                }
                bd.actualitzarDades();
              });
            },
          );
        },
      );
  }
}