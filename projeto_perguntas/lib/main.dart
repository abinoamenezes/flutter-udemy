// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'resultado.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final perguntas = const [
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

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> resposta = temPerguntaSelecionada
        ? perguntas[_perguntaSelecionada]['Resposta'] as List<String>
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: perguntas[_perguntaSelecionada]['texto'],
                texto: perguntas[_perguntaSelecionada]['Resposta'],
                Fresponder: _responder,
                respostas: resposta)
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
