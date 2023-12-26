import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int valor;
  const Resultado(this.valor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Acertos: ${valor.toString()}"),
    );
  }
}
