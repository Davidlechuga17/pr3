import 'package:flutter/material.dart';
import 'package:pr3/components/Checkboxes.dart';
import 'package:pr3/pagines/pagina_inicial.dart';

class Segunda extends StatefulWidget {
  const Segunda({Key? key}) : super(key: key);

  @override
  State<Segunda> createState() => _SegundaState();
}

class _SegundaState extends State<Segunda> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Calendar"),     
      ),
      
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

