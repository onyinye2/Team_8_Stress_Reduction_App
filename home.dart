import 'package:flutter/material.dart';
import 'package:projectonehomescreen/settings.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String dailyafim = 'The Daily affirmation of the day is going';
  int stresslevel = 0;
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
                              stresslevel = 1;
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
                                stresslevel = 2;
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 177, 176, 172)),
                              child: Text('mid'))),
                      SizedBox(
                          width: 88,
                          height: 45,
                          child: ElevatedButton(
                              onPressed: () {
                                stresslevel = 3;
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
