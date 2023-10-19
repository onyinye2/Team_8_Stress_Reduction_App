import 'package:flutter/material.dart';
import '../model/exercise.dart';

void main() {
  runApp(ExerciseApp());
}

class ExerciseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise App',
      theme: ThemeData(
        primaryColor: Colors.teal, // Change the primary color
      ),
      home: ExerciseList(),
    );
  }
}

class ExerciseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises'),
      ),
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

  ExerciseCard({required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 4, // Add some elevation
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        title: Text(
          exercise.title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(exercise.task),
        trailing: Icon(
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
