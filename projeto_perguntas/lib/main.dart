// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

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
    final perguntas = [
      {
        'texto': 'Qual é o seu animal favortio?',
        'Resposta': ['Dogs', 'Cats', 'Whale', 'Giraffe']
      },
      {
        'texto': 'Qual a sua cor favorita?',
        'Resposta': ['white', 'black', 'red', 'blue']
      },
      {
        'texto': 'Qual seu professor preferido?',
        'Resposta': ['ceça', 'cicéro', 'Roberta', 'Clevinton']
      }
    ];

    List<String> resposta =
        perguntas[_perguntaSelecionada]['Resposta'] as List<String>;

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
            ),
            body: Column(
              children: [
                Questao(perguntas[_perguntaSelecionada]['texto'] as String),
                ...resposta.map((texto) => Resposta(texto, _responder)),
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
