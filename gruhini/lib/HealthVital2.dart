// @dart=2.9
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Healthvital20 extends StatefulWidget{
  Healthvital200 createState()=> Healthvital200();
}

class Healthvital200 extends State<Healthvital20> {

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
                      Text("Blood Sugar level",
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
              "Blood Sugar",
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
                child: Text("Blood sugar, or glucose, is the main sugar found in your blood. It comes from the food you eat, and is your body's main source of energy. Your blood carries glucose to all of your body's cells to use for energy.",
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
                  hintText: 'Enter the blood sugar value in mg/dl',
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
                  textValue = checkSugarStatus(_controller.text);
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

                child: Text('''If Blood Sugar Level is Low - 

Most of the sugar or glucose in your blood comes from carbohydrates. Carbohydrates are the sugars and starches in grains, beans, vegetables, fruit, milk and milk products, honey, and sugar. If you don’t have diabetes and you’re feeling the unpleasant effects of a drop in blood sugar, eat or drink something with carbohydrates. Good choices are a piece of fruit, a few whole wheat crackers, a glass of milk, or a carton of yogurt. 

In people with diabetes, hypoglycemia can come on suddenly and needs to be treated right away so it doesn’t get worse. Eat or drink a quickly digested carbohydrate food, such as: 

•  ½ cup fruit juice 

 ½ cup of a regular soft drink (not a diet soda) 

•  1 cup of milk 

•  5 or 6 hard candies 

•  4 or 5 saltine crackers 

•  2 tablespoons of raisins 

•  3 to 4 teaspoons of sugar or honey 

•  3 or 4 glucose tablets or a serving of glucose gel 

Each of these choices provides about 15 grams of carbohydrate. Wait for 15 or 20 minutes, then check your blood sugar with a blood glucose meter. If your blood sugar is still low, have another portion of carbohydrates. 

If Blood Sugar level is High - 

Here are 12 ways that a person with diabetes can lower high blood sugar levels and reduce the risk of complications. 

1. Monitor blood sugar levels closely 

High blood sugar levels often do not cause symptoms until they run well over 200 mg/dL. As such, it is essential for a person with diabetes to monitor their blood sugar several times a day. Doing so will mean that blood sugar levels never get that high. 

A person with diabetes can use a home glucose monitor to check blood sugar levels. These are available for purchase online. 

Recommendations for how frequently to check glucose levels during the day will vary from person to person. A doctor can make the best recommendations regarding blood sugar monitoring to a person with diabetes. 

2. Reduce carbohydrate intake 

Researchers have carried out studies showing that eating a low-carbohydrate, high-protein diet reduces blood sugar levels. 

The body breaks down carbohydrates into sugar that the body uses as energy. Some carbs are necessary in the diet. However, for people with diabetes, eating too many carbohydrates can cause blood sugar to spike too high. 

Reducing the amounts of carbohydrates a person eats reduces the amount a person’s blood sugar spikes. 

3. Eat the right carbohydrates 

The two main kinds of carbohydrates — simple and complex — affect blood sugar levels differently. 

Simple carbohydrates are mainly made up of one kind of sugar. They are found in foods, such as white bread, pasta, and candy. The body breaks these carbohydrates down into sugar very quickly, which causes blood sugar levels to rise rapidly. 

Complex carbohydrates are made up of three or more sugars that are linked together. Because the chemical makeup of these kinds of carbohydrates is complicated, it takes the body longer to break them down. 

As a result, sugar is released into the body more gradually, meaning that blood sugar levels do not rapidly rise after eating them. Examples of complex carbohydrates include whole grain oats and sweet potatoes. 

4. Choose low glycemic index foods 

The glycemic index measures and ranks various foods by how much they cause blood sugar levels to rise. Research showsTrusted Source that following a low glycemic index diet decreases fasting blood sugar levels. 

Low glycemic index foods are those that score below 55 on the glycemic index. Examples of low glycemic foods include: 

• sweet potatoes 

• quinoa 

• legumes 

• low-fat milk 

• leafy greens 

• non-starchy vegetables 

• nuts and seeds 

• meats 

• fish 

5. Increase dietary fiber intake 

Share on PinterestEating plenty of soluble fiber, including whole grains such as brown rice, may help. 

Fiber plays a significant role in blood sugar management by slowing down the rate that carbohydrates break down, and the rate that the body absorbs the resulting sugars. 

The two types of fiber are soluble and insoluble fiber. Of the two types, soluble fiber is the most helpful in controlling blood sugar. 

Soluble fiber is in the following foods: 

• vegetables 

• legumes 

• whole grains 

• fruit 

6. Maintain a healthy weight 

Losing weight helps control blood sugar levels. Being overweight is linked to increased incidents of diabetes and greater occurrences of insulin resistance. 

StudiesTrusted Source show that reducing weight by even only 7 percent can reduce the chances of developing diabetes by 58 percent. 

It is important to note that a person does not need to achieve ideal body weight to benefit from losing 10–20 pounds and keeping it off. Doing so will also improve cholesterol, reduce the risk of complications, and improve a person’s general sense of well-being. 

Eating a healthful diet full of fruits and vegetables and getting enough exercise can help a person lose weight or maintain their currently healthy weight. 

7. Control portion size 

At most meals, a person should follow portion guidelines provided by a doctor or nutritionist. Overeating at a sitting can cause a spike in blood sugar. 

Although simple carbohydrates are typically associated with elevated blood sugar levels, all food causes blood sugar levels to rise. Careful control of portions can keep blood sugar levels more controlled. 

8. Exercise regularly 

Exercise has many benefits for people with diabetes, including weight loss and increased insulin sensitivity. 

Insulin is a hormone that helps people break down sugar in the body. People with diabetes either do not make enough or any insulin in their body or are resistant to the insulin the body does produce. 

Exercise also helps to lower blood sugar levels by encouraging the body’s muscles to use sugar for energy. 

9. Hydrate 

Proper hydration is key to a healthful lifestyle. For people worried about lowering high blood sugar, it is crucial. 

Drinking enough water prevents dehydration and also helps the kidneys remove extra sugar from the body in the urine. 

Those looking to reduce blood sugar levels should reach for water and avoid all sugary drinks, such as fruit juice or soda, which may raise blood sugar levels instead. 

People with diabetes should reduce alcohol intake to the equivalent of one drink per day for women and two for men unless other restrictions apply. 

Share on PinterestHerbal supplements, such as green tea, may help to boost the diet with essential nutrients. 

Herbal extracts may have a positive effect on treating and controlling blood sugar levels. 

Most people should attempt to gain nutrients from the foods they eat. However, supplements are often helpful for people who do not get enough of the nutrients from natural sources. 

Most doctors do not consider supplements as a treatment by themselves. A person should consult their doctor before taking any supplement, as they may interfere with any prescribed medications. 

Some supplements a person may want to try are available for purchase online, including: 

• green tea 

• American ginseng 

• bitter melon 

• cinnamon 

• Aloe vera 

• fenugreek 

• chromium 

11. Manage stress 

Stress has a significant impact on blood sugar levels. The body gives off stress hormones when under tension, and these hormones raise blood sugar levels. 

ResearchTrusted Source shows that managing stress through meditation and exercise can also help to lower blood sugar levels. 

12. Get enough sleep 

Sleep helps a person reduce the amount of sugar in their blood. Getting adequate sleep each night is an excellent way to help keep blood sugar levels at a normal level. 

Blood sugar levels tend to surge in the early morning hours. In most people, insulin will tell the body what to do with the excess sugar, which keeps the blood sugar levels normal. 

Lack of sleep can have a similar effect to insulin resistance, meaning that a person’s blood sugar level could spike significantly from lack of sleep. ''',
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

