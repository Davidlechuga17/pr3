import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pr3/components/Checkboxes.dart';
import 'package:pr3/components/boto_personalitzat.dart';
import 'package:pr3/data/BaseDatos.dart';
import 'package:pr3/pagines/pagina_inicial.dart';

class Segunda extends StatefulWidget {
  const Segunda({Key? key}) : super(key: key);

  @override
  State<Segunda> createState() => _SegundaState();
}

class _SegundaState extends State<Segunda> {

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
    return Scaffold(
      appBar: AppBar(title: Text("Gym Progress"),
      backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.amber,
      drawer: Drawer(child: ListView(
        children: const [
          DrawerHeader(decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/gym.jpg"))
          ), 
          child: null
          ),
          ListTile(
            leading: Icon(Icons.sports_gymnastics),
            title: BotoPersonalitzat(), 
          ),
        ],
      ),),
    
    body: Checkboxes(),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaginaInicial()),
          );
        },
        child: Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}

