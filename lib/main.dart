import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    final List<String> perguntas = [
      "Mobilidade",
      "Desempenho"
    ];

    final List<String> respostas = [
      "Perfeito",
      "Otimo",
      "ok",
      "ruim",
      "Pessimo",
    ];

    return MaterialApp(
      title: 'Questionario',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark()
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),

        body: Center(
          child: Column(
            children: [

              Text(perguntas[0]),
              for(String resposta in respostas)
                ElevatedButton(
                  onPressed: null,
                  child: Text(resposta),
                ),

              const SizedBox(height: 20),

              Text(perguntas[1]),
              for(String resposta in respostas)
                ElevatedButton(
                  onPressed: null,
                  child: Text(resposta),
                )
            ],
          ),
        )
      )
    );
  }
}
