import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final String? perguntas;
  final String? texto;
  final void Function() Fresponder;
  List respostas;
  Questionario(
      {super.key,
      required this.perguntas,
      required this.texto,
      required this.Fresponder,
      required this.respostas});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Questao(perguntas),
      ...respostas.map((texto) => Resposta(texto, Fresponder))
    ]);
  }
}
