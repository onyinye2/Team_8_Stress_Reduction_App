import 'dart:math';

import 'package:flutter/material.dart';
import 'package:team_8_stress_reduction_app/models/daily_affirmation.dart';
import 'affirmation_card.dart';
import 'models/user.dart';

class AffirmationScreen extends StatelessWidget {
  // In the constructor, require a Recipe.
  const AffirmationScreen({super.key, required this.currentUser});

  // Declare a field that holds the Recipe.
  final User currentUser;

  @override
  Widget build(BuildContext context) {
    // Use the Recipe to create the UI.
    DailyAffirmation? currentAffirmation;

    final random = Random();
    currentAffirmation =
        affirmationList[random.nextInt(affirmationList.length)];

    return SingleChildScrollView(
      child: Column(children: [
        AffirmationCard(affirmation: currentAffirmation),
        ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: const Icon(Icons.fastfood_sharp),
                  title: Text('${affirmationList[index].id}'),
                  titleAlignment: ListTileTitleAlignment.center,
                  onTap: () {
                    User.saveAffirmation(currentUser.id, affirmationList[1]);
                  },
                ),
              );
            }),
      ]),
    );
  }
}
/**
 * 
 * return Card(
                    child: ListTile(
                      leading: const Icon(Icons.fastfood_sharp),
                      title: Text('${affirmationList[index].id}'),
                      titleAlignment: ListTileTitleAlignment.center,
                      onTap: () {
                        User.saveAffirmation(
                            currentUser.id, affirmationList[1]);
                      },
                    ),
                  );
 * 
 */