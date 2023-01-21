import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final perguntas;
  final texto;
  final void Function(int) Fresponder;
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
      ...respostas.map((resp) =>
          Resposta(resp['texto'], () => Fresponder(resp['pontuação'])))
    ]);
  }
}
