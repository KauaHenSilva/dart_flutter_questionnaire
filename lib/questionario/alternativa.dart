import 'package:flutter/material.dart';

class Alternativa extends StatelessWidget {
  final String text;
  final void Function() onFuncao;
const Alternativa(this.text ,this.onFuncao , { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      child: ElevatedButton(
        onPressed: onFuncao,
        child: Text(text),
      ),
    );
  }
}