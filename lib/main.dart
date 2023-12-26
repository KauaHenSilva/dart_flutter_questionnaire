import 'package:aula22_adicionando_pontuacao2/questionario/questionario.dart';
import 'package:aula22_adicionando_pontuacao2/resultado/resultado.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questaoAtual = 0;
  int _pontucaototal = 0;


  final List<Map<String, Object>> _dados = [
    {
      'enunciado': 'Questão1',
      'alternativa': [
        {
          'text': 'alternativa1',
          'valor': 1,
        },
        {
          'text': 'alternativa2',
          'valor': 0,
        },
        {
          'text': 'alternativa3',
          'valor': 0,
        },
        {
          'text': 'alternativa4',
          'valor': 0,
        }
      ]
    },
  ];

  reset() {
    setState(() {
      _questaoAtual = 0;
      _pontucaototal = 0;
    });
  }

  _responderQuestao(int pontucao) {
    setState(() {
      _questaoAtual++;
      _pontucaototal += pontucao;
    });
  }

  bool _existeQuestao() {
    return _questaoAtual < _dados.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Questionario',
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Questionario"),
            backgroundColor: Colors.deepPurple,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: reset,
            shape: const CircleBorder(),
            child: const Icon(Icons.home),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          bottomNavigationBar: const BottomAppBar(
            height: 35,
            shape: CircularNotchedRectangle(),
          ),
          body: _existeQuestao()
              ? Questionario(_dados, _questaoAtual, _responderQuestao)
              : Resultado(_pontucaototal),
        ));
  }
}
