import 'package:flutter/material.dart';
import 'package:water_level_indicator/DataPages/About.dart';
import 'package:water_level_indicator/Screens/RegistrationScreen.dart';
import 'package:water_level_indicator/Screens/loginScreen.dart';

class MainScreen extends StatefulWidget {
  static const String idScreen = "mainScreen" ;
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text("Smart Water Level Controller",
        style: TextStyle(color: Colors.black87,fontSize: 20.0),),
      ),
      backgroundColor: Colors.cyan[800],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 100,),
              Image(
                image: AssetImage("images/Logo1.png"),
                width: 292.5,
                height: 187.5,
                alignment: Alignment.center,
              ),
              SizedBox(height: 100,),
              RaisedButton(
                  color: Colors.white70,
                  textColor: Colors.black,
                  child: Container(
                    height: 50.0,
                    child: Center(
                      child: Text("Login", style: TextStyle(height:1.0 ,color: Colors.black, fontFamily: "Brand Bold", fontSize: 20.0),
                      ),

                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(24.0),

                  ),
                  onPressed: ()
                  {
                    Navigator.pushNamedAndRemoveUntil(context, LoginScreen.idScreen, (route) => false);
                  }
              ),
              SizedBox(height: 20,),
              RaisedButton(
                  color: Colors.white70,
                  textColor: Colors.black,
                  child: Container(
                    height: 50.0,
                    child: Center(
                      child: Text("Register", style: TextStyle(height:1.0 ,color: Colors.black, fontFamily: "Brand Bold", fontSize: 20.0),
                      ),

                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(24.0),

                  ),
                  onPressed: ()
                  {
                    Navigator.pushNamedAndRemoveUntil(context, RegistrationScreen.idScreen, (route) => false);
                  }
              ),
              SizedBox(height: 100,),
              FlatButton(
                onPressed: ()
                {
                  Navigator.pushNamedAndRemoveUntil(context, About.idScreen, (route) => false);
                },
                child: Text("About us",
                  style: TextStyle(fontSize: 25.0, color: Colors.white,fontFamily: "Signatra"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
