import 'package:aula11_style_text/questao.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Questionario());
}

class Questionario extends StatefulWidget {
  const Questionario({super.key});

  @override
  State<Questionario> createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  int _questaoAtual = 0;

  final List<String> _questoes = [
    "Usabilidade",
    "Desempenho",
  ];

  final List<String> _alternativa = [
    "Exelente",
    "Bom",
    "Ok",
    "Ruim",
    "Pessima"
  ];

  void _proximaQuestao() {
    if (_questaoAtual < _questoes.length - 1) {
      setState(() {
        _questaoAtual++;
      });
    }
  }

  void _reset() {
    setState(() {
      _questaoAtual = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Questionario",
      theme: ThemeData.dark(),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Hello Word"),
        //   backgroundColor: const Color.fromARGB(211, 102, 102, 102),
        // ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Questao(_questoes[_questaoAtual]),
              for (String pergunta in _alternativa)
                ElevatedButton(
                    onPressed: _proximaQuestao, child: Text(pergunta)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: _reset,
          child: const Icon(Icons.home),
        ),
        bottomNavigationBar: const BottomAppBar(
          shape: CircularNotchedRectangle(),
          height: 30,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
