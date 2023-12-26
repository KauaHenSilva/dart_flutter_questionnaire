import 'package:flutter/material.dart';

class Alternativa extends StatelessWidget {
  final String text;
  final void Function() onFunction;

const Alternativa(this.text,this.onFunction, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onFunction,
        child: Text(text),
      ),
    );
  }
}