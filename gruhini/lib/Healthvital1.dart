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

    // Strings for values
    String underValue = "You are under the normal range please follow the home remedies given below";
    String normalValue = "You are in the normal range";
    String overValue = "You are over the normal range";

    try {
      int vitalsStateNum = int.parse(vitalsState);

      if (vitalsStateNum < 13) return underValue;
      else if (13 < vitalsStateNum && vitalsStateNum < 35) return normalValue;
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
                      Text("WELCOME TO Healthifier",
                          style: TextStyle(
                              color: Color(0xff023e8a),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Hemoglobin",
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
                    color: Color(0xff1d3557),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              child: Text("Haemoglobin is a type of protein found in the body that is responsible for the production of red blood cells and transports oxygen to other organs ",
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
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter the hemoglobin value in g/dL',
                ),

                controller: _controller,

                keyboardType: TextInputType.number,
              ),
              padding: EdgeInsets.all(20),

            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffcaf0f8),
              ),
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

            SizedBox(
              height: 5,
            ),

            Text(
              textValue,
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    color: Color(0xff023e8a),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
            ),// text for range

            SizedBox(
              height: 20,
            ),

            Container(

              child: Text('''What should be done if your heomoglobin is low - 

        1. Eat Foods Rich in Iron -
        
     Maximise your iron intake by eating foods like shellfish, kale, spinach, and fruits and vegetables. We recommend iron-rich foods like raisins, dates, eggs, green beans, and leafy vegetables like spinach. Nuts and seeds like Brazil nuts, almonds, chia seeds, and cashews are other fantastic options in terms of foods to increase haemoglobin fast. For those who like meats, ground beef and chicken breasts are popular iron-rich food sources

        2. Increase Your Folate Intake -
         
      If you are wondering how to increase haemoglobin in blood despite increasing your iron intake – the answer is folate. Folate or Vitamin B9 is required to make red blood cells in your body. By increasing your folate intake through your diet, your iron levels and haemoglobin production will go up. To increase your folate intake, eat foods like beetroot, avocados, peanuts, kidney beans, beef, and lettuce.
                
        3. Using OTC Iron Supplements -
        
      If you’ve got a severe case of anaemia or other health issues due to a low haemoglobin blood count, you may find it helpful to supplement. There are various supplements available like multivitamins and exclusive OTC iron supplements. If you’re planning to go for the over-the-counter ones, talk to your doctor regarding the required dosages based on your bloodwork. And remember, it literally takes months of supplementation for your body to yield results so don’t expect a turnaround in a few days.

        4. Improve Your Iron Absorption Rates - 
        
     All the iron intake in the world won’t make a difference if your body is not able to absorb it. This is where pairing Vitamin C-rich foods like lemon juice and strawberries and leafy green vegetables will help. Include Vitamin A and beta-carotene based foods in your diet, since these two nutrients aid in the absorption and use of iron in the body. Good sources of these include fish, liver, sweet potatoes, collard greens, mangoes, squash, and carrots. However, avoid consuming too much of these, as an overdose of this nutrient can lead to a condition called hypervitaminosis A which causes joint paint and headaches.

     5. Drink Herbal Teas - 
     
     Drinking herbal teas such as nettle tea can help in increasing haemoglobin levels in your blood. Just stir in two teaspoons of dried nettle levels and let it sit for 10 minutes. If you want some flavour, add a pinch of honey or dry date powder for taste. Drink it and make sure to have this two to three times a day for best results. You can also try dandelion tea. Buy the edible parts, powder them, and make herbal concoctions out of them. If you want, you could take these in the form of supplements form but ask your GP about it before doing that.

     6. Exercise
     
      Improving your blood circulation is a surefire way to increase your haemoglobin production since your body creates more RBCs to meet the demand for increased oxygenation to various parts. If you’re looking for recommendations, HIIT and Cardio are your best bets. Opt for whole body workouts if you don’t know where to start and if you are facing health implications. Do low-Impact workouts or hire a professional trainer or physical therapist to help you out.

     7. Increase Your Vitamin C Intake
     
      Vitamin C influences haemoglobin production in your body so if you up its intake, you’ll notice pleasant results. Eat fruits like apples, pomegranates, and citrus fruits like oranges and lemons that are rich in Vitamin C. Vitamin C basically boosts your haemoglobin absorption. And if you like to eat pomegranates, you’ll like its juice too. Drink a glass of fresh homemade pomegranate juice. Avoid processed foods and drinks since those are loaded with added sugar and are low in nutrients. Eat as natural as you possibly can to boost your absorption.

     8. Befriend Lentils/Legumes
     
     Lentils and legumes are not only excellent plant-based sources of protein, but they boost your iron intake and up your haemoglobin levels with time. Good sources are mung beans, fava beans, kidney beans, chickpeas, and adzuki beans. Try pairing these with brown/black rice and you’ll have meals which are not only filling but ones that help you meet your daily nutritional requirements.

     Some of these foods are also rich in zinc and selenium; these trace minerals can influence the haemoglobin production in your body.''',
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

