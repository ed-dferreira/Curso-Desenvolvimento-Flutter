import 'package:flutter/material.dart';
import './Respostas.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelec = 0;
  final _perguntas = const [
    {
      'perguntas': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Roxo', 'Vermelho', 'Verde'],
    },
    {
      'perguntas': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Gato', 'Cachorro', 'Cobra'],
    },
    {
      'perguntas': 'Qual seu genero de música favorito?',
      'respostas': ['Rock', 'Pop', 'Eletronica', 'Jazz'],
    },
  ];

  void _responder() {
    setState(() {
      _perguntaSelec++;
    });
  }

  bool get temPerguntaSelec {
    return _perguntaSelec < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas =
        temPerguntaSelec ? _perguntas[_perguntaSelec].cast()['respostas'] : [];
    List<Widget> respostasWidgets =
        respostas.map((text) => Respostas(text, _responder)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntinhas perguntosas'),
        ),
        body: temPerguntaSelec
            ? Column(
                children: <Widget>[...respostasWidgets],
              )
            : Center(
                child: Text('Parabens!', style: TextStyle(fontSize: 28)),
              ),
      ),
    );
  }
}
//Questionario e resultado  