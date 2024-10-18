import 'package:flutter/material.dart';
import './Resultado.dart';
import './Questionario.dart';

void main() => runApp(const PerguntaApp());

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Verde', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Preto', 'pontuacao': 3},
        {'texto': 'Marrom', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 4},
        {'texto': 'Cobra', 'pontuacao': 2},
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Gato', 'pontuacao': 10},
      ],
    },
    {
      'texto': 'Qual seu genero de música favorito?',
      'respostas': [
        {'texto': 'Rock', 'pontuacao': 10},
        {'texto': 'Jazz', 'pontuacao': 8},
        {'texto': 'Pop', 'pontuacao': 6},
        {'texto': 'Eletronica', 'pontuacao': 5},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuest() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuest),
      ),
    );
  }
}
