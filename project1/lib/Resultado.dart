import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuest;

  Resultado(this.pontuacao, this.quandoReiniciarQuest);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens';
    } else if (pontuacao < 12) {
      return 'Você é bom';
    } else if (pontuacao < 16) {
      return 'Incrivel';
    } else {
      return 'Tu é foda!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        ElevatedButton(
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 14, color: Colors.blue),
          ),
          onPressed: quandoReiniciarQuest,
        )
      ],
    );
  }
}
