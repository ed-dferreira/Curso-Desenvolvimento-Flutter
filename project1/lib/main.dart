import 'package:flutter/material.dart';

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
    print(_perguntaSelec);
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
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[_perguntaSelec % perguntas.length]),
            ElevatedButton(
              child: const Text('Resposta 1'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: const Text('Resposta 2'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: const Text('Resposta 3'),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }
}
