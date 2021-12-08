// @dart=2.9

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/flex.dart';
import 'package:google_fonts/google_fonts.dart';
import 'AboutApp.dart';
import 'VaccinationDashboard.dart';

void main() => runApp(MaterialApp(home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff0f4ff),
      child: Image.asset('assets/images/gruhininobg.png'),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f9fa),
      appBar: AppBar(
        title: Text("HoMed"),
        backgroundColor: Color(0xff42a5f5),
      ),

      body: Column(
        children: <Widget>[

          SizedBox(
            height: 40,
          ),

          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text("WELCOME TO HoMed APP",
                        style: TextStyle(
                            color: Color(0xff023e8a),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),

                    SizedBox(
                      height: 8,
                    ),

                    Text("Dashboard",
                        style: TextStyle(
                            color: Color(0xff023e8a),
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),

                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset(
                    "assets/images/heart.png",
                    width: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          SizedBox(
            height: 40,
          ),

          Container(
            decoration: BoxDecoration(
                color: Color(0xfff0f4ff),
                borderRadius: BorderRadius.circular(10)),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VaccinationDashboard()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 2,
                  ),

                  Image.asset(
                    "assets/images/health.png",
                    width: 90,
                    height: 90,
                  ),

                  SizedBox(
                    height: 4,
                  ),

                  Text(
                    "Health",
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                      color: Color(0xff023e8a),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  Text(
                    "Health Vitals Status Reporting, Timely Medication Reminder and Vaccination Service",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                      color: Color(0xff023e8a),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                ],
              ),
            ),
            width: 350,
            height: 220,
          ), //container1

          SizedBox(
            height: 25,
          ),

          Container(
            decoration: BoxDecoration(
                color: Color(0xfff0f4ff),
                borderRadius: BorderRadius.circular(10)),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutApp()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 2,
                  ),

                  Image.asset(
                    "assets/images/about.png",
                    width: 90,
                    height: 90,
                  ),

                  SizedBox(
                    height: 4,
                  ),

                  Text(
                    "About App",
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                      color: Color(0xff023e8a),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  Text(
                    "More information about the developers and their purpose",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                      color: Color(0xff023e8a),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    )),
                  ),

                  SizedBox(
                    height: 2,
                  ),
                ],
              ),
            ),
            width: 350,
            height: 220,
          ), //container3
        ],
      ),

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff42a5f5),
              ),
              child: Text('Hello, Friend!'),
            ),
            ListTile(
              title: const Text('My Dashboard'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('My Profile'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('About App'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
