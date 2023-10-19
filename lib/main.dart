import 'package:flutter/material.dart';
//import 'package:projectonehomescreen/settings.dart';
import 'home.dart';
//import 'settings.dart';
import '/models/user.dart';

//THIS SHOULD BE THE WELCOME SCREEN

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomeScreen(userID: , currentUser: ),
      routes: {
        //'/home': (context) => HomeScreen(userID: , currentUser: , ),
        //  '/settings': (context) => settings()
      },
    );
  }
}
