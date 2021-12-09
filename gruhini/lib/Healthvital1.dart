// @dart=2.9
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Healthvital10 extends StatefulWidget{
  Healthvital100 createState()=> Healthvital100();
}

class Healthvital100 extends State<Healthvital10> {

  final _controller = TextEditingController();
  String textValue = "";

  String checkVitalsStatus(String vitalsState) {
    String underValue = "You are under the normal range";
    String normalValue = "You are in the normal range";
    String overValue = "You are over the normal range";

    try {
      int vitalsStateNum = int.parse(vitalsState);

      if (vitalsStateNum < 25) return underValue;
      else if (vitalsStateNum < 35) return normalValue;
      else return overValue;
    } catch (exception) {
      return "Exception caught is: $exception";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xfff8f9fa),

      appBar: AppBar(
        title: Text("HoMed"),
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
                      Text("WELCOME TO HoMed APP",
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

            Text(
              "Hemoglobin",
              style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    color: Color(0xff023e8a),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),

                controller: _controller,

                keyboardType: TextInputType.number,
              ),
              padding: EdgeInsets.all(20),

            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  textValue = checkVitalsStatus(_controller.text);
                });
              },
                child: Text(
                  "submit",
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Color(0xff023e8a),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                ),
            ),

            Text(
              textValue,
              style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    color: Color(0xff023e8a),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
            ),

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

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

