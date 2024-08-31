import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget(title: 'baco bacoso'));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Added background color for visibility
      child: Center(
        child: Text(
          title,
          textDirection: TextDirection.ltr,
          style: const TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }
}
