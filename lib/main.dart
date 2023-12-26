import 'package:aula17_desafio_widget_resultado/alternativa.dart';
import 'package:aula17_desafio_widget_resultado/janelas/resultados.dart';
import 'package:aula17_desafio_widget_resultado/questionario.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int perguntaAtual = 0;

  proximaPergunta() {
    if (existePergunta()) {
      setState(() {
        perguntaAtual++;
      });
    }
  }

  restart() {
    if (perguntaAtual != 0) {
      setState(() {
        perguntaAtual = 0;
      });
    }
  }

  bool existePergunta() {
    return perguntaAtual < dados.length;
  }

  final List<Map<String, Object>> dados = [
    {
      'text': 'Meu nome:',
      'alternativas': ['Kauã', 'Ianca', 'Gabriel', 'Patrick']
    },
    {
      'text': 'Minha Idade:',
      'alternativas': ['19', '18', '20', '21']
    },
    // {
    //   'text': 'Meu sobrenome:',
    //   'alternativas': ['Sousa', 'Henrique', 'Oliveriva']
    // },
    // {
    //   'text': 'Nome do meu pai:',
    //   'alternativas': [
    //     'Francisco Klebler Sousa',
    //     'Fransisco Kleber Da Silva',
    //   ]
    // },
    // {
    //   'text': 'Nome da minha Mãe:',
    //   'alternativas': ['Norma dos Anjos Almeida', 'Norma dos Santos Almeida']
    // },
    // {
    //   'text': 'Eu faço que faculdade?',
    //   'alternativas': [
    //     'Tecnologia da informação',
    //     'Sistemas de informação',
    //     'Matematica',
    //     'Letras'
    //   ],
    // }
  ];

  @override
  Widget build(BuildContext context) {
    List<String> alternativasAtual =
        existePergunta() ? dados[perguntaAtual].cast()['alternativas'] : [];

    return MaterialApp(
      title: 'Questionario',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Questionario"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: existePergunta()
            ? Column(
                children: [
                  Enunciado(dados[perguntaAtual].cast()['text'].toString()),
                  ...alternativasAtual
                      .map((e) => Alternativa(e, proximaPergunta))
                ],
              )
            : const Resultados(),
        bottomNavigationBar: const BottomAppBar(
          height: 35,
          shape: CircularNotchedRectangle(),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: restart,
          shape: const CircleBorder(),
          child: const Icon(Icons.home),
        ),
      ),
    );
  }
}
