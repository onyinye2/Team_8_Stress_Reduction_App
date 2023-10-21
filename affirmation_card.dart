import 'package:flutter/material.dart';
import 'package:who_cares/model/daily_affirmation.dart';

class AffirmationCard extends StatelessWidget {
  final DailyAffirmation? affirmation;

  AffirmationCard({required this.affirmation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Affirmations",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              affirmation?.affirmation ?? "No affirmation available.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
