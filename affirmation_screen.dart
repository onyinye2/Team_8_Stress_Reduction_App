import 'package:flutter/material.dart';
import 'dart:math';
import 'package:who_cares/model/daily_affirmation.dart';
import 'package:who_cares/widget/affirmation_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Affirmation App'),
        ),
        body: Center(
          child: AffirmationScreen(),
        ),
      ),
    );
  }
}

class AffirmationScreen extends StatefulWidget {
  @override
  _AffirmationScreenState createState() => _AffirmationScreenState();
}

class _AffirmationScreenState extends State<AffirmationScreen> {
  DailyAffirmation? currentAffirmation;

  void getRandomAffirmation() {
    final random = Random();
    currentAffirmation = affirmationList[random.nextInt(affirmationList.length)];
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
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              currentAffirmation = null;
            });
          },
          child: Text('Next Affirmation'),
        ),
      ],
    );
  }
}
