// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'questao.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
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
                Questao(perguntas[_perguntaSelecionada]),
                ElevatedButton(
                  child: Text('resposta 1 '),
                  onPressed: _responder,
                ),
                ElevatedButton(
                  child: Text('resposta 2 '),
                  onPressed: _responder,
                ),
                ElevatedButton(
                  child: Text('resposta 3 '),
                  onPressed: _responder,
                )
              ],
            )));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
