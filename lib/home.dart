import 'dart:math';

import 'package:flutter/material.dart';
import 'package:team_8_stress_reduction_app/daily_affirmation_screen.dart';
import 'package:team_8_stress_reduction_app/exercise_screen.dart';
import 'package:team_8_stress_reduction_app/models/daily_stress.dart';
import '/settings.dart';
import '/models/user.dart';
import 'models/daily_affirmation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(
      {super.key, required this.userID,
      required this.currentUser}); //now I can use widget to access variables

  final String? userID;
  final User? currentUser;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  StressLevel currentSL = StressLevel(level: '0', date: DateTime.now());

  List<User> users = sampleUsers;
  void updateUserStress(String sl) {
    var tempOldSL = currentSL;
    currentSL = StressLevel(level: sl, date: DateTime.now());
    if (tempOldSL.level == '0') {
      User.addStressLevel(widget.currentUser!.id, currentSL);
    } else {
      User.updateStressLevel(widget.currentUser!.id, tempOldSL, currentSL);
    }
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String dailyafim = 'The Daily affirmation of the day is going';

  int stresslevel = 0;

  @override
  Widget build(BuildContext context) {
    final random = Random();
    DailyAffirmation da = affirmationList[DateTime.now().day];

    final List<Widget> widgetOptions = [
      Home(currentUser: widget.currentUser, dailyAffirmation: da),
      AffirmationScreen(currentUser: widget.currentUser, dailyAffirmation: da),
      const ExerciseApp()
    ];

    User cu = widget.currentUser!;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Settings(currentUser: cu);
                      },
                    ),
                  );
                },
                icon: const Icon(Icons.settings)),
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 143, 167, 161),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 171, 189, 184),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.collections_bookmark),
              label: '       Daily\n Affirmation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sunny), label: 'Stress\n   Exercises'),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home(
      {super.key, required this.currentUser, required this.dailyAffirmation});

  final DailyAffirmation? dailyAffirmation;
  final User? currentUser;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  StressLevel currentSL = StressLevel(level: '0', date: DateTime.now());

  void updateUserStress(String sl) {
    var tempOldSL = currentSL;
    currentSL = StressLevel(level: sl, date: DateTime.now());
    if (tempOldSL.level == '0') {
      User.addStressLevel(widget.currentUser!.id, currentSL);
    } else {
      User.updateStressLevel(widget.currentUser!.id, tempOldSL, currentSL);
    }
  }

  String dailyafim = 'The Daily affirmation of the day is going';
  int stresslevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 143, 167, 161),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 153, 158, 159)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  const Text(
                    'How is your stress level today?',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 88,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {
                              stresslevel = 1;
                              updateUserStress('1');
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 177, 176, 172)),
                            child: const Text('low'),
                          )),
                      SizedBox(
                          width: 88,
                          height: 45,
                          child: ElevatedButton(
                              onPressed: () {
                                updateUserStress('2');
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 177, 176, 172)),
                              child: const Text('mid'))),
                      SizedBox(
                          width: 88,
                          height: 45,
                          child: ElevatedButton(
                              onPressed: () {
                                updateUserStress('3');
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 177, 176, 172)),
                              child: const Text('high')))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 350,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.blueGrey),
              child: Text(
                widget.dailyAffirmation!.affirmation,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
