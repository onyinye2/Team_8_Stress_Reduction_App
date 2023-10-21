import 'package:flutter/material.dart';
import 'models/daily_affirmation.dart';

class AffirmationCard extends StatelessWidget {
  final DailyAffirmation? affirmation;

  const AffirmationCard({super.key, required this.affirmation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Affirmations",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              affirmation?.affirmation ?? "No affirmation available.",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
