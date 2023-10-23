import 'package:flutter/material.dart';
import '/models/exercise.dart';

void main() {
  runApp(const ExerciseApp());
}

class ExerciseApp extends StatelessWidget {
  const ExerciseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise App',
      theme: ThemeData.dark(),
      color: Colors.blueGrey,
      home: const ExerciseList(),
    );
  }
}

class ExerciseList extends StatelessWidget {
  const ExerciseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: sampleExercises.length,
        itemBuilder: (context, index) {
          final exercise = sampleExercises[index];
          return ExerciseCard(exercise: exercise);
        },
      ),
    );
  }
}

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 4, // Add some elevation
      child: ListTile(
        tileColor: Colors.grey[400],
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(
          exercise.title,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(exercise.task),
        trailing: const Icon(
          Icons.play_circle_filled, // Use a play icon
          color: Colors.teal, // Match the primary color
          size: 40.0,
        ),
        onTap: () {
          // Open the external link when the card is tapped.
          launchURL(exercise.externalLink);
        },
      ),
    );
  }
}

void launchURL(String url) async {
  // You can use the `url_launcher` package to open URLs in Flutter.
  // Make sure to add 'url_launcher' to your pubspec.yaml file.
  // import 'package:url_launcher/url_launcher.dart';
  // if (await canLaunch(url)) {
  //   await launch(url);
  // } else {
  //   throw 'Could not launch $url';
  // }

  // For simplicity, we are using a fake function to print the URL.
  print('URL Clicked: $url');
}
