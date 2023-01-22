import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontos;
  final void Function() reiniciaQuestionario;

  const Resultado(
      {super.key, required this.pontos, required this.reiniciaQuestionario});

  String get fraseResultado {
    if (pontos >= 12) {
      return 'Parabéns!! voçê foi muito bem. Pontuação: $pontos';
    } else {
      return 'Voçê chegou ao fim, na proxima melhore prfv';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(fraseResultado, style: const TextStyle(fontSize: 20)),
        ),
      ],
    );
  }
}
