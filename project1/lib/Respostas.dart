import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String resposta;
  final void Function() OnSelection;

  Respostas(this.resposta, this.OnSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[800],
        ),
        onPressed: OnSelection,
        child: Text(
          resposta,
          style: TextStyle(fontSize: 28, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
