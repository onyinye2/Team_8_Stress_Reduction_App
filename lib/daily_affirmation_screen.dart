import 'dart:async';

import 'package:flutter/material.dart';
import 'package:team_8_stress_reduction_app/models/daily_affirmation.dart';
import 'affirmation_card.dart';
import 'models/user.dart';

class AffirmationScreen extends StatefulWidget {
  const AffirmationScreen(
      {super.key, required this.currentUser, required this.dailyAffirmation});

  final User? currentUser;
  final DailyAffirmation? dailyAffirmation;
  @override
  State<AffirmationScreen> createState() => _AffirmationScreenState();
}

class _AffirmationScreenState extends State<AffirmationScreen> {
  //final User? currentUser = widget.currentUser!;

  final int _pos = 0;
  late Timer _timer;
  DailyAffirmation? da;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(days: 1), (timer) {
      setState(() {
        da = widget.dailyAffirmation;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    //_timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Use the Recipe to create the UI.
    DailyAffirmation? currentAffirmation;

    currentAffirmation = widget.dailyAffirmation!;

    return Column(children: [
      AffirmationCard(affirmation: currentAffirmation),
      (widget.currentUser!.savedAffirmations.isEmpty)
          ? const Text("No Saved Affirmations")
          : Expanded(
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return AffirmationCard(
                          affirmation:
                              widget.currentUser!.savedAffirmations[index]);
                    }),
              ),
            )
    ]);
  }
}

  // Declare a field that holds the Recipe.

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

                  Card(
                  child: ListTile(
                    leading: const Icon(Icons.fastfood_sharp),
                    title: Text('${affirmationList[index].id}'),
                    titleAlignment: ListTileTitleAlignment.center,
                    onTap: () {
                      User.saveAffirmation(
                          widget.currentUser!.id, affirmationList[1]);
                    },
                  ),
                );
 * 
 */