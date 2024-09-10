import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Teste',
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: Scaffold(
          body: Column(children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 120,
              color: Colors.red,
            ),
            Container(
              width: 50,
              height: 20,
              color: Colors.black,
            )
          ]),
        ));
  }
}
