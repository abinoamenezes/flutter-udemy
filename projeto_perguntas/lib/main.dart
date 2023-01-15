// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  @override
  void setState(VoidCallback fn) {
    perguntaSelecionada++;
  }

  void responder() {
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = ['Qual é seu animal favorito?', 'Qual sua cor favorita?'];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
            ),
            body: Column(
              children: [
                Text(perguntas[perguntaSelecionada]),
                ElevatedButton(
                  child: Text('resposta 1 '),
                  onPressed: responder,
                ),
                ElevatedButton(
                  child: Text('resposta 2 '),
                  onPressed: responder,
                ),
                ElevatedButton(
                  child: Text('resposta 3 '),
                  onPressed: responder,
                )
              ],
            )));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
