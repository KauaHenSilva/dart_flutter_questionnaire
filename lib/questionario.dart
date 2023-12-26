import 'package:flutter/material.dart';

class Enunciado extends StatelessWidget {
  final String text;
  const Enunciado(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
