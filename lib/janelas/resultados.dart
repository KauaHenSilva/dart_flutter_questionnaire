import 'package:flutter/material.dart';

class Resultados extends StatelessWidget {
const Resultados({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Center(
      child: Text("Parabéns!", style: TextStyle(fontSize: 20)),
    );
  }
}