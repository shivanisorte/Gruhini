// @dart=2.9
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gruhini/HealthVital2.dart';
import 'package:gruhini/HealthVital4.dart';
import 'package:gruhini/Healthvital1.dart';
import 'package:gruhini/Healthvital3.dart';
import 'package:gruhini/Healthvital5.dart';
import 'package:gruhini/Healthvital6.dart';
import 'ComingSoonScreen.dart';

class Health_vitals_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f9fa),
      appBar: AppBar(
        title: Text("Healthifier"),
        backgroundColor: Color(0xff42a5f5),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                      Text("WELCOME TO HEALTHIFIER APP",
                          style: TextStyle(
                              color: Color(0xff023e8a),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Health Vitals List ",
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
                  color: Color(0xff90caf9),
                  borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Healthvital10()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Hemoglobin",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                        color: Color(0xffcaf0f8),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ],
                ),
              ),
              width: 350,
              height: 120,
            ), // Container1

            SizedBox(
              height: 20,
            ), // Sizedbox1

            Container(
              decoration: BoxDecoration(
                  color: Color(0xff90caf9),
                  borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Healthvital20()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Blood Sugar",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                        color: Color(0xffcaf0f8),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ],
                ),
              ),
              width: 350,
              height: 120,
            ), // Container2

            SizedBox(
              height: 20,
            ), // Sizedbox2

            Container(
              decoration: BoxDecoration(
                  color: Color(0xff90caf9),
                  borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Healthvital30()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Platelets",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                        color: Color(0xffcaf0f8),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ],
                ),
              ),
              width: 350,
              height: 120,
            ), // Container3

            SizedBox(
              height: 20,
            ), // Sizedbox3

            Container(
              decoration: BoxDecoration(
                  color: Color(0xff90caf9),
                  borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Healthvital40()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Blood Pressure",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                        color: Color(0xffcaf0f8),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ],
                ),
              ),
              width: 350,
              height: 120,
            ), // Container4

            SizedBox(
              height: 20,
            ), // Sizedbox4

            Container(
              decoration: BoxDecoration(
                  color: Color(0xff90caf9),
                  borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Healthvital50()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Thyroid",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                        color: Color(0xffcaf0f8),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ],
                ),
              ),
              width: 350,
              height: 120,
            ), // Container5

            SizedBox(
              height: 20,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Color(0xff90caf9),
                  borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Healthvital60()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Cholestrol",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                        color: Color(0xffcaf0f8),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ],
                ),
              ),
              width: 350,
              height: 120,
            ), // Container6

            SizedBox(
              height: 20,
            ), // Sizedbox6
          ],
        ),
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
