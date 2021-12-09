// @dart=2.9
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Healthvital60 extends StatefulWidget {
  Healthvital600 createState() => Healthvital600();
}

class Healthvital600 extends State<Healthvital60> {
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
              "Cholesterol",
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
                  "Cholesterol is a fat-like, waxy substance that helps your body make cell membranes, many hormones, and vitamin D. The cholesterol in your blood comes from two sources: the foods you eat and your liver. Your liver makes all the cholesterol your body needs ",
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
                  '''Normal Cholesterol Range - Cholesterol levels vary by age, weight, and gender. A normal range for total cholesterol is usually between 125 to 200mg/dL''',
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
                  '''If Cholesterol is High - 

1. Eat heart-healthy foods 

A few changes in your diet can reduce cholesterol and improve your heart health: 

• Reduce saturated fats. Saturated fats, found primarily in red meat and full-fat dairy products, raise your total cholesterol. Decreasing your consumption of saturated fats can reduce your low-density lipoprotein (LDL) cholesterol — the "bad" cholesterol. 

• Eliminate trans fats. Trans fats, sometimes listed on food labels as "partially hydrogenated vegetable oil," are often used in margarines and store-bought cookies, crackers and cakes. Trans fats raise overall cholesterol levels. The Food and Drug Administration has banned the use of partially hydrogenated vegetable oils by Jan. 1, 2021. 

• Eat foods rich in omega-3 fatty acids. Omega-3 fatty acids don't affect LDL cholesterol. But they have other heart-healthy benefits, including reducing blood pressure. Foods with omega-3 fatty acids include salmon, mackerel, herring, walnuts and flaxseeds. 

• Increase soluble fiber. Soluble fiber can reduce the absorption of cholesterol into your bloodstream. Soluble fiber is found in such foods as oatmeal, kidney beans, Brussels sprouts, apples and pears. 

• Add whey protein. Whey protein, which is found in dairy products, may account for many of the health benefits attributed to dairy. Studies have shown that whey protein given as a supplement lowers both LDL cholesterol and total cholesterol as well as blood pressure. 

2. Exercise on most days of the week and increase your physical activity 

Exercise can improve cholesterol. Moderate physical activity can help raise high-density lipoprotein (HDL) cholesterol, the "good" cholesterol. With your doctor's OK, work up to at least 30 minutes of exercise five times a week or vigorous aerobic activity for 20 minutes three times a week. 

Adding physical activity, even in short intervals several times a day, can help you begin to lose weight. Consider: 

• Taking a brisk daily walk during your lunch hour 

• Riding your bike to work 

• Playing a favorite sport 

To stay motivated, consider finding an exercise buddy or joining an exercise group. 

3. Quit smoking 

Quitting smoking improves your HDL cholesterol level. The benefits occur quickly: 

• Within 20 minutes of quitting, your blood pressure and heart rate recover from the cigarette-induced spike 

• Within three months of quitting, your blood circulation and lung function begin to improve 

• Within a year of quitting, your risk of heart disease is half that of a smoker 

4. Lose weight 

Carrying even a few extra pounds contributes to high cholesterol. Small changes add up. If you drink sugary beverages, switch to tap water. Snack on air-popped popcorn or pretzels — but keep track of the calories. If you crave something sweet, try sherbet or candies with little or no fat, such as jelly beans. 

Look for ways to incorporate more activity into your daily routine, such as using the stairs instead of taking the elevator or parking farther from your office. Take walks during breaks at work. Try to increase standing activities, such as cooking or doing yardwork. 

5. Drink alcohol only in moderation 

Moderate use of alcohol has been linked with higher levels of HDL cholesterol — but the benefits aren't strong enough to recommend alcohol for anyone who doesn't already drink. 

If you drink alcohol, do so in moderation. For healthy adults, that means up to one drink a day for women of all ages and men older than age 65, and up to two drinks a day for men age 65 and younger. 

Too much alcohol can lead to serious health problems, including high blood pressure, heart failure and strokes. 

If lifestyle changes aren't enough … 

Sometimes healthy lifestyle changes aren't enough to lower cholesterol levels. If your doctor recommends medication to help lower your cholesterol, take it as prescribed while continuing your lifestyle changes. Lifestyle changes can help you keep your medication dose low.''',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                    color: Color(0xff1d3557),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                margin: EdgeInsets.all(20.0)),

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
