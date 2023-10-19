import 'package:flutter/material.dart';
import 'package:team_8_stress_reduction_app/models/daily_affirmation.dart';
import 'main.dart';
import 'models/user.dart';

class AffirmationScreen extends StatelessWidget {
  // In the constructor, require a Recipe.
  const AffirmationScreen({super.key, required this.currentUser});

  // Declare a field that holds the Recipe.
  final User currentUser;

  @override
  Widget build(BuildContext context) {
    // Use the Recipe to create the UI.
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Daily Affirmations"),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
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
                }),
          ),
        ));
  }
}
