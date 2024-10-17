import 'package:flutter/material.dart';
import './Questao.dart';
import './Respostas.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelec = 0;

  void _responder() {
    setState(() {
      _perguntaSelec++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual sua música favorita?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntinhas perguntosas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelec % perguntas.length]),
            Respostas('Resp1', _responder),
            Respostas('Resp2', _responder),
            Respostas('Resp3', _responder),
          ],
        ),
      ),
    );
  }
}
