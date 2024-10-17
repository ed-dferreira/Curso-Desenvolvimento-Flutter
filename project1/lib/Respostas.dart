import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String resposta;
  final void Function() OnSelection;

  const Respostas(this.resposta, this.OnSelection, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[800],
        ),
        onPressed: OnSelection,
        child: Text(
          resposta,
          style: const TextStyle(fontSize: 28, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
