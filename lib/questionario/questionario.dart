import 'package:Questionario/questionario/alternativa.dart';
import 'package:Questionario/questionario/enunciado.dart';
import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> dados;
  final int questaoAtual;
  final void Function(int) onFuncao;
  const Questionario(this.dados, this.questaoAtual, this.onFuncao, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> alternativasAtual =
        dados[questaoAtual].cast()['alternativa'];

    return Column(
      children: [
        Enunciado(dados[questaoAtual].cast()['enunciado']),
        ...alternativasAtual.map((e) => Alternativa(e['text'] as String,
            () => onFuncao(int.parse(e['valor'].toString()))))
      ],
    );
  }
}
