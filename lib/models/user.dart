import 'daily_affirmation.dart';
import 'daily_stress.dart';

class User {
  String id;
  String firstname;
  String lastname;
  String email;
  String password;
  List<StressLevel> dailyStressLevel;
  List<DailyAffirmation> savedAffirmations;

  User(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.email,
      required this.password,
      required this.dailyStressLevel,
      required this.savedAffirmations});

  void addStressLevel(String id, StressLevel sl) {
    sampleUsers[id as int].dailyStressLevel.add(sl);
  }

  void savedAffirmation(String id, DailyAffirmation da) {
    sampleUsers[id as int].savedAffirmations.add(da);
  }

  void updateEmail(String id, String e) {
    sampleUsers[id as int].email = e;
  }

  String updatePassword(String id, String currentPass, String newPass) {
    if (sampleUsers[id as int].password == currentPass) {
      sampleUsers[id as int].password = newPass;
      return "Password Updated.";
    } else {
      return "incorrect password";
    }
  }
}

List<User> sampleUsers = [
  User(
      id: "0000",
      firstname: "Onyi",
      lastname: "Onyemaobi",
      email: "onyemaobi1@gmail.com",
      password: "onyemaobi1",
      dailyStressLevel: [],
      savedAffirmations: []),
  User(
      id: "0001",
      firstname: "Pau",
      lastname: "Tuang",
      email: "tuang1@gmail.com",
      password: "tuang1",
      dailyStressLevel: [],
      savedAffirmations: []),
  User(
      id: "0002",
      firstname: "Gihwan",
      lastname: "Kim",
      email: "kim1@gmail.com",
      password: "kim1",
      dailyStressLevel: [],
      savedAffirmations: []),
  User(
      id: "0003",
      firstname: "Ayman",
      lastname: "Tawaalai",
      email: "tawaalai1@gmail.com",
      password: "tawalaai1",
      dailyStressLevel: [],
      savedAffirmations: []),
  User(
      id: "0004",
      firstname: "Kawsar",
      lastname: "Ali",
      email: "ali1@gmail.com",
      password: "ali1",
      dailyStressLevel: [],
      savedAffirmations: []),
];
