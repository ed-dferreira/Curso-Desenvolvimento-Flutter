import 'package:flutter/material.dart';
import './Questao.dart';
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

  void _responder() {
    setState(() {
      _perguntaSelec++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
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

    List<String> respostas = perguntas[_perguntaSelec].cast()['respostas'];
    List<Widget> respostasWidgets =
        respostas.map((text) => Respostas(text, _responder)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntinhas perguntosas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelec % perguntas.length]['perguntas']
                as String),
            ...respostasWidgets
          ],
        ),
      ),
    );
  }
}
//Na próxima aula o professor fará um operador ternário na lista de respostas aonde um dos valores possíveis é setado como "null".
// Com a vinda do Null Safety no Flutter 2, não é mais possível deixar um valor nulo, logo, vai gerar um erro no código. Para corrigir esse problema basta trocar o
// "null" por "[]", ou seja, basta escrever os colchetes vazios no lugar do null, sem as aspas.