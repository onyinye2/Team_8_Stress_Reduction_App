import 'package:flutter/material.dart';
import 'package:projectonehomescreen/settings.dart';
import 'home.dart';
import 'settings.dart';

void main() => runApp(app());

class app extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      routes: {
        '/home': (context) => home(),
        '/settings': (context) => settings()
      },
    );
  }
}
