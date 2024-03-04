import 'package:flutter/material.dart';

class Alternativa extends StatelessWidget {
  final String text;
  final void Function() onFuncao;
const Alternativa(this.text ,this.onFuncao , { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onFuncao,
        child: Text(text),
      ),
    );
  }
}