import 'dart:math';

import 'package:flutter/material.dart';
import 'package:projectonehomescreen/settings.dart';
import 'dailyAffirmation.dart';
import 'dailyStress.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String dailyafim = 'The Daily affirmation of the day is going';
  String stresslevel = '';
  int number = Random().nextInt(51);
  DailyAffirmation affirmation =
      new DailyAffirmation(id: 4, affirmation: '', useful: null);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 143, 167, 161),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/settings');
                    },
                    icon: Icon(Icons.settings)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 153, 158, 159)),
              child: Column(
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Container(
                    child: Text(
                      'How is your stress level today?',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
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
                              stresslevel = 'Low';
                              DateTime today = DateTime.now();
                              StressLevel stress = new StressLevel(
                                  level: stresslevel, date: today);
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 177, 176, 172)),
                            child: Text('low'),
                          )),
                      SizedBox(
                          width: 88,
                          height: 45,
                          child: ElevatedButton(
                              onPressed: () {
                                stresslevel = 'Medium';
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 177, 176, 172)),
                              child: Text('mid'))),
                      SizedBox(
                          width: 88,
                          height: 45,
                          child: ElevatedButton(
                              onPressed: () {
                                stresslevel = 'High';
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 177, 176, 172)),
                              child: Text('high')))
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
              child: Text(
                dailyafim,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.blueGrey),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 171, 189, 184),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections_bookmark),
                label: '       Daily\n Affirmation'),
            BottomNavigationBarItem(
                icon: Icon(Icons.sunny), label: 'Mindfulness\n   Excersise'),
            BottomNavigationBarItem(
              icon: Icon(Icons.tag_faces),
              label: '    Stress\n Reduction',
            )
          ]),
    );
  }
}
