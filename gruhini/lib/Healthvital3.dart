// @dart=2.9
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Healthvital30 extends StatefulWidget{
  Healthvital300 createState()=> Healthvital300();
}

class Healthvital300 extends State<Healthvital30> {

  final _controller = TextEditingController();
  String textValue = "";

  String checkSugarStatus(String vitalsState) {

    // Strings for values
    String underValue = "You are in the normal sugar range";
    String normalValue = "You are pre diebetic";
    String overValue = "You are diebetic ";

    try {
      int vitalsStateNum = int.parse(vitalsState);

      if (vitalsStateNum < 140) return underValue;
      else if (140 < vitalsStateNum && vitalsStateNum < 199) return normalValue;
      else return overValue;
    } catch (exception) {
      return "An exception was returned";
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xfff8f9fa),

      appBar: AppBar(
        title: Text("Healthyfier"),
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
                      Text("WELCOME TO Healthyfier",
                          style: TextStyle(
                              color: Color(0xff023e8a),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Platelets",
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
              "Platelets",
              style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    color: Color(0xff1d3557),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
                child: Text("Platelets control bleeding in our bodies, so they can be essential to surviving surgeries such as organ transplant, as well as fighting cancer, chronic diseases, and traumatic injuries. ",
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Color(0xff1d3557),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                margin: EdgeInsets.all(20.0)

            ),

            Container(
                child: Text("Normal Platelets Count - A normal platelet count ranges from 150,000 to 450,000 platelets per microliter of blood.",
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Color(0xff1d3557),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                margin: EdgeInsets.all(20.0)

            ),

            SizedBox(
              height: 20,
            ),

            Container(

                child: Text('''If Platelets Count is Low  - 

These tips can help you understand how to raise your blood platelet count with foods and supplements. 

1. Eating more leafy greens - 

Leafy green vegetables like kale and collards contain vitamin K, which will not directly raise your platelet levels but can help your blood clot better. Vitamin K plays an important role in helping your body produce proteins important to the clotting process. Because blood clotting is a complex function that involves not only platelets but other biologic pathways, eating adequate vitamin K can preserve the body’s ability to stop bleeding. 

2. Eating more fatty fish - 

Topping the list of foods that increase platelet counts? Possibly fatty fish, because it’s high in vitamin B12. This vitamin plays a key role in red blood cell formation, and some research suggests low platelet levels may be linked to B12 deficiency. Salmon, trout and tuna all pack a big B12 punch, so add more of these fatty fishes to your diet to help boost your platelet count. You could take a B12 supplement instead, but getting B12 from foods may help your body make use of the vitamin more effectively. 

3. Increasing folate consumption - 

Folate (folic acid) is another B vitamin that can help elevate platelet levels. It’s far better to get folate from foods rather than from supplements (except for pregnant women), since folate supplements deliver a high dose of folic acid that can disrupt the ability of B12 to function correctly inside the body. To boost your folate consumption, eat more broccoli, Brussels sprouts, liver, and beans. This should help raise your platelet levels. 

4. Avoiding alcohol - 

Alcohol, whether you choose beer, wine, or spirits, can disrupt red blood cell production in the bone marrow. Damage to the bone marrow can decrease production of all types of red cells, including platelets. It’s not known how much alcohol consumption can cause bone marrow damage. Your best bet is to avoid alcohol entirely if you have a low platelet count. This might help your marrow function better and bring your platelet count back up. 

5. Eating more citrus - 

Vitamin C plays a key role in how platelets work, so increasing your vitamin C levels can help you  existing platelets function better. Vitamin C also helps your body absorb iron, an important component of red blood cell production. To increase your vitamin C consumption, add plenty of fresh oranges, lemons, limes and grapefruit to your diet. Ask your doctor about eating grapefruit if you take any prescription medications, though, as compounds in grapefruit can alter medication absorption. 

6. Consuming more iron-rich foods - 

While you’re adding citrus to your diet for vitamin C, also consider increasing your iron intake. Avoid iron supplements, which can cause constipation, and instead opt for beef liver, tofu, kidney beans, or oysters. Iron plays a vital role in red blood cell production, which includes platelets. Boosting your iron intake can help you raise your platelet levels naturally. And here’s a fun fact: dark chocolate is a good source of iron, too! 

7. Trying a chlorophyll supplement - 

Chlorophyll may count as one of the supplements that increase blood platelet count. One survey suggested that taking a type of supplement called chlorella (a fresh-water algae) may boost platelet counts in people who had been diagnosed with a platelet disorder. Chlorophyll abounds in any green plant, so taking a supplement that contains spirulina or parsley may also help your platelet levels. You also can increase your chlorophyll intake by eating more green, leafy vegetables and grasses, like wheatgrass. 

8. Avoiding vitamin E and fish oil supplements 

If you have a low platelet count, it means your blood doesn’t clot as well as it should. Vitamin E and fish oil supplements can make that problem worse. Compounds in these supplements actually decrease the ability of blood to clot, so you should avoid them if you’re trying to increase your platelet count. These supplements won’t cause your platelet count to go lower, but vitamin E and fish oil capsules can disrupt other aspects of the blood clotting process and make you even more prone to bleeding.''',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Color(0xff1d3557),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                margin: EdgeInsets.all(20.0)
            )

            // text for remedy

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

