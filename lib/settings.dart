import 'package:flutter/material.dart';

import 'models/daily_stress.dart';
import 'models/user.dart';

class Settings extends StatelessWidget {
  Settings({super.key, required currentUser});

  late final User currentUser;

  //String email = '';
  //String stressaverage = '';

  String calculateStressAvg(List<StressLevel> sl) {
    int sum = 0;
    int i = 0;

    while (i < sl.length) {
      sum += int.parse(sl[i].level);
      i++;
    }
    return sum.toString();
  }

  @override
  Widget build(BuildContext context) {
    String email = currentUser.email;
    String stressAverage = calculateStressAvg(currentUser.dailyStressLevel);
    var dob = '01-01-2000';

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 143, 167, 161),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
              ),
              Container(
                child: const Text(
                  'Settings',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Container(
                width: 65,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 350,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blueGrey),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(180)),
                          ),
                          child: const Icon(
                            Icons.face,
                            size: 80,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Hello ${currentUser.firstname} ${currentUser.lastname}!',
                                style: TextStyle(fontSize: 25),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Email: $email',
                                style: const TextStyle(fontSize: 25),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Average Stress Level: ${stressAverage}',
                                style: TextStyle(fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 100,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 177, 176, 172)),
                      child: const Text('Sign Out'))),
            ],
          )
        ],
      ),
    );
  }
}
