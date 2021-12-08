// @dart=2.9
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gruhini/health_vitals_list.dart';

import 'ComingSoonScreen.dart';

class VaccinationDashboard extends StatelessWidget {
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
            height: 20,
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
                      height: 5,
                    ),
                    Text("Health Dashboard",
                        style: TextStyle(
                            color: Color(0xff023e8a),
                            fontSize: 16,
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
            height: 20,
          ),

          Container(
            decoration: BoxDecoration(
                color: Color(0xfff0f4ff),
                borderRadius: BorderRadius.circular(10)),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Health_vitals_list()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 2,
                  ),

                  Image.asset(
                    "assets/images/healthvital.png",
                    width: 80,
                    height: 70,
                  ),

                  SizedBox(
                    height: 4,
                  ),

                  Text(
                    "Health Vitals",
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
                    "Check your health status and get recommendations",
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
            height: 180,
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
                  MaterialPageRoute(builder: (context) => CommingSoonScreen()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  SizedBox(
                    height: 2,
                  ),

                  Image.asset(
                    "assets/images/ongoing_medication.png",
                    width: 80,
                    height: 70,
                  ),

                  SizedBox(
                    height: 4,
                  ),

                  Text(
                    "Ongoing Medication",
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
                    "Get timely reminders of your medicines",
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
            height: 180,
          ), // container2

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
                  MaterialPageRoute(builder: (context) => CommingSoonScreen()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  SizedBox(
                    height: 2,
                  ),

                  Image.asset(
                    "assets/images/vaccination.png",
                    width: 80,
                    height: 70,
                  ),

                  SizedBox(
                    height: 4,
                  ),

                  Text(
                    "Vaccination",
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
                    "Get vaccination details and schedule your next appointment",
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
            height: 180,
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
