import 'package:flutter/material.dart';
import 'package:team_8_stress_reduction_app/daily_affirmation_screen.dart';
import 'package:team_8_stress_reduction_app/exercise_screen.dart';
import 'package:team_8_stress_reduction_app/models/daily_stress.dart';
//import 'package:projectonehomescreen/settings.dart';
import '/models/user.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, required this.userID, required currentUser});

  late final String userID;
  late final User currentUser; // = sampleUsers[int.parse(userID)];
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  StressLevel currentSL = StressLevel(level: '0', date: DateTime.now());

  void updateUserStress(String sl) {
    var tempOldSL = currentSL;
    currentSL = StressLevel(level: sl, date: DateTime.now());
    if (tempOldSL.level == '0') {
      User.addStressLevel(widget.currentUser.id, currentSL);
      //sampleUsers[int.parse(widget.currentUser.id)].dailyStressLevel.add(currentSL);
    } else {
      User.updateStressLevel(widget.currentUser.id, tempOldSL, currentSL);
      //sampleUsers[int.parse(widget.currentUser.id)].dailyStressLevel.add(currentSL);
    }
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  /*static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(userID: userID, currentUser: currentUser),
    AffirmationScreen(),
    ExerciseApp(),
  ];*/

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String dailyafim = 'The Daily affirmation of the day is going';
  int stresslevel = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 143, 167, 161),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/settings');
                    },
                    icon: const Icon(Icons.settings)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 300,
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
                    height: 60,
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
                dailyafim,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
          ]),
    );
  }
}
