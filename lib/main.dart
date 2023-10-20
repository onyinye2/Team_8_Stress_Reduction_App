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
      routes: const {
        //'/home': (context) => HomeScreen(userID: , currentUser: , ),
        //  '/settings': (context) => settings()
      },
      title: 'Onyemaobi CW 2 - Recipe App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Stress Reduction App'),
        ),
        //passing in the ListView.builder
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.emoji_emotions_outlined)],
        ));
  }
}
