// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'resultado.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;
  final perguntas = const [
    {
      'texto': 'Qual é o seu animal favortio?',
      'Resposta': [
        {'texto': 'Dogs', 'pontuação': 10},
        {'texto': 'Cats', 'pontuação': 3},
        {'texto': 'Whale', 'pontuação': 2},
        {'texto': 'Giraffe', 'pontuação': 1},
      ]
    },
    {
      'texto': 'Qual a sua cor favorita?',
      'Resposta': [
        {'texto': 'white', 'pontuação': 8},
        {'texto': 'black', 'pontuação': 10},
        {'texto': 'red', 'pontuação': 10},
        {'texto': 'blue', 'pontuação': 10},
      ]
    },
    {
      'texto': 'Qual seu professor preferido?',
      'Resposta': [
        {'texto': 'ceça', 'pontuação': 0},
        {'texto': 'cicéro', 'pontuação': 5},
        {'texto': 'Roberta', 'pontuação': 3},
        {'texto': 'Clevinton', 'pontuação': 10},
      ]
    }
  ];

  void reiniciarQuestionaio() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  void _responder(int pontos) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontos;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> resposta = temPerguntaSelecionada
        ? perguntas[_perguntaSelecionada].cast()['Resposta']
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
            : Resultado(
                pontos: _pontuacaoTotal,
                reiniciaQuestionario: reiniciarQuestionaio),
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
