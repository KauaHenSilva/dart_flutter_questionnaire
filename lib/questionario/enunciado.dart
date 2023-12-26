import 'package:flutter/material.dart';

class Enunciado extends StatelessWidget {
  final String text;
  const Enunciado(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(25),
        child: Text(text));
  }
}
