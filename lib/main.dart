import 'package:flutter/material.dart';
import 'package:mobilequestionario/components/my_drawer.dart';
import 'package:mobilequestionario/questionario/questionario.dart';
import 'package:mobilequestionario/resultado/resultado.dart';
import 'package:mobilequestionario/data/question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questaoAtual = 0;
  int _pontucaototal = 0;

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
    return _questaoAtual < dados.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Questionario',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Questionario"),
            centerTitle: true,
          ),
          drawer: const MyDrawer(),
          floatingActionButton: FloatingActionButton(
            onPressed: reset,
            shape: const CircleBorder(),
            child: const Icon(Icons.home),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          bottomNavigationBar: const BottomAppBar(
            shape: CircularNotchedRectangle(),
          ),
          body: _existeQuestao()
              ? Questionario(dados, _questaoAtual, _responderQuestao)
              : Resultado(_pontucaototal),
        ));
  }
}
