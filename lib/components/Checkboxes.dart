import 'package:flutter/material.dart';

class Checkboxes extends StatelessWidget {
  
  List<bool> _isCheckedList = List.generate(30, (index) => false);

   Checkboxes({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
        ),
        itemCount: 30,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text("Dia 1"),
            value: _isCheckedList[index],
            onChanged: 
          );
        },
      );
  }
}