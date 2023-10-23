//NOT USED

import 'package:flutter/material.dart';
import 'dart:math';
import 'models/daily_affirmation.dart';
import 'affirmation_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Affirmation App'),
        ),
        body: const Center(
          child: AffirmationScreen(),
        ),
      ),
    );
  }
}

class AffirmationScreen extends StatefulWidget {
  const AffirmationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AffirmationScreenState createState() => _AffirmationScreenState();
}

class _AffirmationScreenState extends State<AffirmationScreen> {
  DailyAffirmation? currentAffirmation;

  void getRandomAffirmation() {
    final random = Random();
    currentAffirmation =
        affirmationList[random.nextInt(affirmationList.length)];
  }

  @override
  Widget build(BuildContext context) {
    if (currentAffirmation == null) {
      getRandomAffirmation();
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AffirmationCard(affirmation: currentAffirmation),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              currentAffirmation = null;
            });
          },
          child: const Text('Next Affirmation'),
        ),
      ],
    );
  }
}
