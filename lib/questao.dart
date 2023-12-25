import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao(this.texto, {super.key});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}