import 'package:flutter/material.dart';
import 'package:water_level_indicator/DataPages/MonthlyBill.dart';
import 'package:water_level_indicator/DataPages/Settings.dart';
import 'package:water_level_indicator/DataPages/System%20Alarms.dart';
import 'package:water_level_indicator/DataPages/Usage.dart';
import 'package:water_level_indicator/DataPages/WaterLevel.dart';
import 'package:water_level_indicator/MyWidgets/Divider.dart';
import 'package:water_level_indicator/Screens/PumpState.dart';
import 'package:water_level_indicator/Screens/loginScreen.dart';

class MenuScreen extends StatelessWidget {
  static const String idScreen = "menu" ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text("Main Menu", style: TextStyle(color: Colors.black87, fontSize: 22.0),),
      ),
      drawer: Container(
        color: Colors.white70,
        width: 255.0,
        child: Drawer(
          child: ListView(
            children: [
              //Drawer Header
              Container(
                height: 165.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Image.asset("images/user_icon.png", height: 65.0, width: 65.0,),
                      SizedBox(width: 16.0,),
                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Profile Name", style: TextStyle(color: Colors.blueGrey, fontSize: 16.0, fontFamily: "Brand-Bold"),),
                          SizedBox(height: 6.0,),
                          Text("Visit Profile", style: TextStyle(color: Colors.blueGrey, fontFamily: "Brand-Bold"),)
                        ],),
                    ],
                  ),
                ),
              ),
              DividerWidget(),
              SizedBox(height: 12.0,),
              //Drawer body controllers
              ListTile(
                leading: Icon(Icons.history),
                title: Text("History", style: TextStyle(fontFamily: "Brand-Bold",color: Colors.blueGrey, fontSize: 16.0),),),
                SizedBox(height: 12.0,),

                //Drawer body controllers
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Visit Profile", style: TextStyle(fontFamily: "Brand-Bold",color: Colors.blueGrey, fontSize: 16.0),),
                ),
                SizedBox(height: 12.0,),
                //Drawer body controllers
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text("About", style: TextStyle(fontFamily: "Brand-Bold",color: Colors.blueGrey, fontSize: 16.0),),
                ),
                SizedBox(height: 12.0,),
                //Drawer body controllers
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text("Log in", style: TextStyle(fontFamily: "Brand-Bold",color: Colors.blueGrey, fontSize: 16.0),),),

            ],
          ),
        ),
      ),
      backgroundColor: Colors.cyan[800],
      body: Padding(
        padding: EdgeInsets.all(6.0),
        child: Column(
          children: [
            SizedBox(height: 200,),
            RaisedButton(
                color: Colors.white70,
                textColor: Colors.black87,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text("Water Level Page", style: TextStyle(height:1.0 ,color: Colors.black, fontFamily: "Brand Bold", fontSize: 20.0),
                    ),

                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(24.0),
                ),
                onPressed: ()
                {
                  Navigator.pushNamedAndRemoveUntil(context, WaterLevel.idScreen, (route) => false);
                }
                ),
            SizedBox(height: 20,),
            RaisedButton(
                color: Colors.white70,
                textColor: Colors.black87,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text("Monthly Bill Calculation", style: TextStyle(height:1.0 ,color: Colors.black, fontFamily: "Brand Bold", fontSize: 20.0),
                    ),

                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(24.0),
                ),
                onPressed: ()
                {
                  Navigator.pushNamedAndRemoveUntil(context, MonthlyBill.idScreen, (route) => false);
                }
            ),
            SizedBox(height: 20,),
            RaisedButton(
                color: Colors.white70,
                textColor: Colors.black87,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text("Usage Calculation", style: TextStyle(height:1.0 ,color: Colors.black, fontFamily: "Brand Bold", fontSize: 20.0),
                    ),

                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(24.0),
                ),
                onPressed: ()
                {
                  Navigator.pushNamedAndRemoveUntil(context, Usage.idScreen, (route) => false);
                }
            ),
            SizedBox(height: 20,),
            RaisedButton(
                color: Colors.white70,
                textColor: Colors.black87,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text("Pump State", style: TextStyle(height:1.0 ,color: Colors.black, fontFamily: "Brand Bold", fontSize: 20.0),
                    ),

                  ),
                ),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(24.0),
              ),

                onPressed: ()
                {
                  Navigator.pushNamedAndRemoveUntil(context, PumpState.idScreen, (route) => false);
                }
            ),
            SizedBox(height: 20,),
            RaisedButton(
                color: Colors.white70,
                textColor: Colors.black87,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text("System Alarms", style: TextStyle(height:1.0 ,color: Colors.black, fontFamily: "Brand Bold", fontSize: 20.0),
                    ),

                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(24.0),
                ),

                onPressed: ()
                {
                  Navigator.pushNamedAndRemoveUntil(context, SystemAlarms.idScreen, (route) => false);
                }
            ),
            SizedBox(height: 20,),
            RaisedButton(
                color: Colors.white70,
                textColor: Colors.black87,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text("Settings", style: TextStyle(height:1.0 ,color: Colors.black, fontFamily: "Brand Bold", fontSize: 20.0),
                    ),

                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(24.0),
                ),

                onPressed: ()
                {
                  Navigator.pushNamedAndRemoveUntil(context, Settings.idScreen, (route) => false);
                }
            ),

          ],
        ),
      ),
    );
  }
}
