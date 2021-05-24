import 'package:flutter/material.dart';
import 'package:water_level_indicator/Screens/mainscreen.dart';

class About extends StatelessWidget {
  static const String idScreen = "about" ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[800],
      body: Padding(
        padding: EdgeInsets.all(6.0),child: Column(
        children: [
          SizedBox(height: 100,),
          Text("About us", style: TextStyle(fontSize: 24.0, fontFamily: "Signatra" ),textAlign: TextAlign.center,),
          SizedBox(height: 500.0,),
          RaisedButton(
              color: Colors.white70,
              textColor: Colors.black,
              child: Container(
                height: 50.0, child: Center(
                child: Text("Back To Main Menu",
                  style: TextStyle(height:1.0 ,color: Colors.black, fontFamily: "Brand Bold", fontSize: 20.0),
                ),
              ),
              ),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(2.0),
              ),
              onPressed: ()
              {
                Navigator.pushNamedAndRemoveUntil(context, MainScreen.idScreen, (route) => false);
              }
          )

        ],
      ),
      ),
    );
  }
}
