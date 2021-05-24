import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:water_level_indicator/DataPages/About.dart';
import 'package:water_level_indicator/DataPages/MonthlyBill.dart';
import 'package:water_level_indicator/DataPages/Settings.dart';
import 'package:water_level_indicator/DataPages/System%20Alarms.dart';
import 'package:water_level_indicator/DataPages/Usage.dart';
import 'package:water_level_indicator/DataPages/WaterLevel.dart';
import 'package:water_level_indicator/Screens/Menu.dart';
import 'package:water_level_indicator/Screens/PumpState.dart';
import 'package:water_level_indicator/Screens/RegistrationScreen.dart';
import 'package:water_level_indicator/Screens/mainscreen.dart';
import 'package:water_level_indicator/Screens/loginScreen.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
DatabaseReference usersRef = FirebaseDatabase.instance.reference().child("users");

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Water Level Controller',
      theme: ThemeData(
        fontFamily: "Brand Bolt",
        primarySwatch: Colors.blue,
      ),
      initialRoute: MainScreen.idScreen,
      routes: {
        RegistrationScreen.idScreen: (context) => RegistrationScreen(),
        LoginScreen.idScreen: (context) => LoginScreen(),
        MainScreen.idScreen: (context) => MainScreen(),
        MenuScreen.idScreen: (context) => MenuScreen(),
        PumpState.idScreen: (context) => PumpState(),
        WaterLevel.idScreen: (context) => WaterLevel(),
        MonthlyBill.idScreen: (context) => MonthlyBill(),
        Usage.idScreen: (context) => Usage(),
        About.idScreen: (context) => About(),
        Settings.idScreen: (context) => Settings(),
        SystemAlarms.idScreen: (context) => SystemAlarms(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
