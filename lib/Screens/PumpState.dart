import 'package:flutter/material.dart';
import 'package:water_level_indicator/Screens/Menu.dart';

class PumpState extends StatelessWidget {
  static const String idScreen = "pumpstate" ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[800],
      body: Padding(
        padding: EdgeInsets.all(6.0),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text("Pump State",
              style: TextStyle(fontSize: 24.0, fontFamily: "Brand Bold" ),
              textAlign: TextAlign.center,),
            SizedBox(height: 250.0,),
            RaisedButton(
                color: Colors.green,
                textColor: Colors.black87,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text("ON", style: TextStyle(height:1.0 ,color: Colors.black, fontFamily: "Brand Bold", fontSize: 20.0),
                    ),

                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(300.0),
                ),
                onPressed: ()
                {

                }
            ),
            SizedBox(height: 20,),
            RaisedButton(
                color: Colors.red,
                textColor: Colors.black87,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text("OFF", style: TextStyle(height:1.0 ,color: Colors.black, fontFamily: "Brand Bold", fontSize: 20.0),
                    ),

                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(300.0),
                ),
                onPressed: ()
                {

                }
            ),
            SizedBox(height: 120),
            RaisedButton(
                color: Colors.white70,
                textColor: Colors.black,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text("Back To Main Menu", style: TextStyle(height:1.0 ,color: Colors.black, fontFamily: "Brand Bold", fontSize: 20.0),
                    ),

                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(2.0),

                ),
                onPressed: ()
                {
                  Navigator.pushNamedAndRemoveUntil(context, MenuScreen.idScreen, (route) => false);
                }
            ),

          ],
        ),
      ),
    );
  }
}
