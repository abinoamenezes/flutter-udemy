import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontos;

  const Resultado({super.key, required this.pontos});

  String get fraseResultado {
    if (pontos >= 12) {
      return 'Parabéns!! voçê foi muito bem. Pontuação: $pontos';
    } else {
      return 'Voçê chegou ao fim, na proxima melhore prfv';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(fraseResultado, style: const TextStyle(fontSize: 20)),
    );
  }
}
