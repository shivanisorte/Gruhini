// @dart=2.9
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Healthvital50 extends StatefulWidget {
  Healthvital500 createState() => Healthvital500();
}

class Healthvital500 extends State<Healthvital50> {
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
              "Thyroid",
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
                child: Text(
                  "The thyroid is a butterfly-shaped gland that sits low on the front of the neck. Your thyroid lies below your Adam’s apple, along the front of the windpipe. The thyroid has two side lobes, connected by a bridge (isthmus) in the middle. ",
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                    color: Color(0xff1d3557),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                margin: EdgeInsets.all(20.0)),

            Container(
                child: Text(
                  '''Hypothyroidism signs and symptoms may include: 

   • Fatigue

   • Increased sensitivity to cold

   • Constipation

   • Dry skin

   • Weight gain

   • Puffy face

   • Hoarseness

   • Muscle weakness

   • Elevated blood cholesterol level

   • Muscle aches, tenderness and stiffness

   • Pain, stiffness or swelling in your joints

   • Heavier than normal or irregular menstrual periods

   • Thinning hair

   • Slowed heart rate

   • Depression

   • Impaired memory

   • Enlarged thyroid gland (goiter)''',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                    color: Color(0xff1d3557),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                margin: EdgeInsets.all(20.0)),

            SizedBox(
              height: 20,
            ),

            Container(
                child: Text(
                  '''Treatments -

If you have high levels of thyroid hormones (hyperthyroidism), treatment options can include:

• Anti-thyroid drugs (methimazole and propylthioracil): These are medications that stop your thyroid from making hormones.

• Radioactive iodine: This treatment damages the cells of your thyroid, preventing it from making high levels of thyroid hormones.

• Beta blockers: These medications don’t change the amount of hormones in your body, but they help control your symptoms.

• Surgery: A more permanent form of treatment, your healthcare provider may surgically remove your thyroid (thyroidectomy). This will stop it from creating hormones. However, you will need to take thyroid replacement hormones for the rest of your life.

If you have low levels of thyroid hormones (hypothyroidism), the main treatment option is:

• Thyroid replacement medication: This drug is a synthetic (man-made) way to add thyroid hormones back into your body. One drug that’s commonly used is called levothyroxine. By using a medication, you can control thyroid disease and live a normal life.



Thyroid Test At Home -

You can do a quick and easy self-exam of your thyroid at home. The only tools you need to do this self-exam are a mirror and a glass of water.

To do the thyroid self-exam, follow these steps:

• Start by identifying where your thyroid is located. Generally, you’ll find the thyroid on the front of your neck, between your collar bone and Adam’s apple. In men, the Adam’s apple is much easier to see. For women, it’s usually easiest to look from the collar bone up.

• Tip your head back while looking in a mirror. Look at your neck and try to hone in on the space you will be looking once you start the exam.

• Once you’re ready, take a drink of water while your head is tilted back. Watch your thyroid as you swallow. During this test, you’re looking for lumps or bumps. You may be able to see them when you swallow the water.

Repeat this test a few times to get a good look at your thyroid. If you see any lumps or bumps, reach out to your healthcare provider.''',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                    color: Color(0xff1d3557),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                margin: EdgeInsets.all(20.0))

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
