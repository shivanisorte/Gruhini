// @dart=2.9
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Healthvital40 extends StatefulWidget{
  Healthvital400 createState()=> Healthvital400();
}

class Healthvital400 extends State<Healthvital40> {

  final _controller = TextEditingController();
  String textValue = "";

  String checkbloodpressureStatus(String vitalsState) {

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
              "Blood Pressure",
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
                child: Text("Blood pressure is the force of your blood pushing against the walls of your arteries. Each time your heart beats, it pumps blood into the arteries. Your blood pressure is highest when your heart beats, pumping the blood. This is called systolic pressure(SBP). When your heart is at rest, between beats, your blood pressure falls. This is called diastolic pressure(DBP). ",
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
                  hintText: 'Enter the blood pressure value',
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
                  textValue = checkbloodpressureStatus(_controller.text);
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
            ),

            SizedBox(
              height: 20,
            ),

            Container(

                child: Text('''If Blood Pressure Is Low - 

Low blood pressure that either doesn't cause signs or symptoms or causes only mild symptoms rarely requires treatment. 

If you have symptoms, treatment depends on the cause. For instance, when medication causes low blood pressure, treatment usually involves changing or stopping the medication or lowering the dose. 

If it's not clear what's causing low blood pressure or no treatment exists, the goal is to raise your blood pressure and reduce signs and symptoms. Depending on your age, health and the type of low blood pressure you have, you can do this in several ways: 

• Use more salt. Experts usually recommend limiting salt in your diet because sodium can raise blood pressure, sometimes dramatically. For people with low blood pressure, that can be a good thing. 

But because excess sodium can lead to heart failure, especially in older adults, it's important to check with your doctor before increasing the salt in your diet. 

• Drink more water. Fluids increase blood volume and help prevent dehydration, both of which are important in treating hypotension. 

Wear compression stockings. The elastic stockings commonly used to relieve the pain and swelling of varicose veins can help reduce the pooling of blood in your legs. 

Some people tolerate elastic abdominal binders better than they do compression stockings. 

• Medications. Several medications can be used to treat low blood pressure that occurs when you stand up (orthostatic hypotension). For example, the drug fludrocortisone, which boosts your blood volume, is often used to treat this form of low blood pressure. 

Doctors often use the drug midodrine (Orvaten) to raise standing blood pressure levels in people with chronic orthostatic hypotension. It works by restricting the ability of your blood vessels to expand, which raises blood pressure. 

If Blood Pressure Is High - 

1. Lose extra pounds and watch your waistline 

Blood pressure often increases as weight increases. Being overweight also can cause disrupted breathing while you sleep (sleep apnea), which further raises your blood pressure. 

Weight loss is one of the most effective lifestyle changes for controlling blood pressure. Losing even a small amount of weight if you're overweight or obese can help reduce your blood pressure. In general, you may reduce your blood pressure by about 1 millimeter of mercury (mm Hg) with each kilogram (about 2.2 pounds) of weight you lose. 

Besides shedding pounds, you generally should also keep an eye on your waistline. Carrying too much weight around your waist can put you at greater risk of high blood pressure. 

In general: 

• Men are at risk if their waist measurement is greater than 40 inches (102 centimeters). 

• Women are at risk if their waist measurement is greater than 35 inches (89 centimeters). 

These numbers vary among ethnic groups. Ask your doctor about a healthy waist measurement for you. 

2. Exercise regularly 

Regular physical activity — such as 150 minutes a week, or about 30 minutes most days of the week — can lower your blood pressure by about 5 to 8 mm Hg if you have high blood pressure. It's important to be consistent because if you stop exercising, your blood pressure can rise again. 

If you have elevated blood pressure, exercise can help you avoid developing hypertension. If you already have hypertension, regular physical activity can bring your blood pressure down to safer levels. 

Some examples of aerobic exercise you may try to lower blood pressure include walking, jogging, cycling, swimming or dancing. You can also try high-intensity interval training, which involves alternating short bursts of intense activity with subsequent recovery periods of lighter activity. Strength training also can help reduce blood pressure. Aim to include strength training exercises at least two days a week. Talk to your doctor about developing an exercise program. 

3. Eat a healthy diet 

Eating a diet that is rich in whole grains, fruits, vegetables and low-fat dairy products and skimps on saturated fat and cholesterol can lower your blood pressure by up to 11 mm Hg if you have high blood pressure. This eating plan is known as the Dietary Approaches to Stop Hypertension (DASH) diet. 

It isn't easy to change your eating habits, but with these tips, you can adopt a healthy diet: 

Keep a food diary. Writing down what you eat, even for just a week, can shed surprising light on your true eating habits. Monitor what you eat, how much, when and why. 

• Consider boosting potassium. Potassium can lessen the effects of sodium on blood pressure. The best source of potassium is food, such as fruits and vegetables, rather than supplements. Talk to your doctor about the potassium level that's best for you. 

• Be a smart shopper. Read food labels when you shop and stick to your healthy-eating plan when you're dining out, too. 

4. Reduce sodium in your diet 

Even a small reduction in the sodium in your diet can improve your heart health and reduce blood pressure by about 5 to 6 mm Hg if you have high blood pressure. 

The effect of sodium intake on blood pressure varies among groups of people. In general, limit sodium to 2,300 milligrams (mg) a day or less. However, a lower sodium intake — 1,500 mg a day or less — is ideal for most adults. 

To decrease sodium in your diet, consider these tips: 

• Read food labels. If possible, choose low-sodium alternatives of the foods and beverages you normally buy. 

Eat fewer processed foods. Only a small amount of sodium occurs naturally in foods. Most sodium is added during processing. 

• Don't add salt. Just 1 level teaspoon of salt has 2,300 mg of sodium. Use herbs or spices to add flavor to your food. 

• Ease into it. If you don't feel you can drastically reduce the sodium in your diet suddenly, cut back gradually. Your palate will adjust over time. 

5. Limit the amount of alcohol you drink 

Alcohol can be both good and bad for your health. By drinking alcohol only in moderation — generally one drink a day for women, or two a day for men — you can potentially lower your blood pressure by about 4 mm Hg. One drink equals 12 ounces of beer, five ounces of wine or 1.5 ounces of 80-proof liquor. 

But that protective effect is lost if you drink too much alcohol. 

Drinking more than moderate amounts of alcohol can actually raise blood pressure by several points. It can also reduce the effectiveness of blood pressure medications. 

6. Quit smoking 

Each cigarette you smoke increases your blood pressure for many minutes after you finish. Stopping smoking helps your blood pressure return to normal. Quitting smoking can reduce your risk of heart disease and improve your overall health. People who quit smoking may live longer than people who never quit smoking. 

7. Cut back on caffeine 

The role caffeine plays in blood pressure is still debated. Caffeine can raise blood pressure up to 10 mm Hg in people who rarely consume it. But people who drink coffee regularly may experience little or no effect on their blood pressure. 

Although the long-term effects of caffeine on blood pressure aren't clear, it's possible blood pressure may slightly increase. 

To see if caffeine raises your blood pressure, check your pressure within 30 minutes of drinking a caffeinated beverage. If your blood pressure increases by 5 to 10 mm Hg, you may be sensitive to the blood pressure raising effects of caffeine. Talk to your doctor about the effects of caffeine on your blood pressure. 

8. Reduce your stress 

Chronic stress may contribute to high blood pressure. More research is needed to determine the effects of chronic stress on blood pressure. Occasional stress also can contribute to high blood pressure if you react to stress by eating unhealthy food, drinking alcohol or smoking. 

Take some time to think about what causes you to feel stressed, such as work, family, finances or illness. Once you know what's causing your stress, consider how you can eliminate or reduce stress. 

If you can't eliminate all of your stressors, you can at least cope with them in a healthier way. Try to: 

• Change your expectations. For example, plan your day and focus on your priorities. Avoid trying to do too much and learn to say no. Understand there are some things you can't change or control, but you can focus on how you react to them. 

• Focus on issues you can control and make plans to solve them. If you are having an issue at work, try talking to your manager. If you are having a conflict with your kids or spouse, take steps to resolve it. 

• Avoid stress triggers. Try to avoid triggers when you can. For example, if rush-hour traffic on the way to work causes stress, try leaving earlier in the morning, or take public transportation. Avoid people who cause you stress if possible. 

• Make time to relax and to do activities you enjoy. Take time each day to sit quietly and breathe deeply. Make time for enjoyable activities or hobbies in your schedule, such as taking a walk, cooking or volunteering. 

• Practice gratitude. Expressing gratitude to others can help reduce your stress. 

9. Monitor your blood pressure at home and see your doctor regularly 

Home monitoring can help you keep tabs on your blood pressure, make certain your lifestyle changes are working, and alert you and your doctor to potential health complications. Blood pressure monitors are available widely and without a prescription. Talk to your doctor about home monitoring before you get started. 

Regular visits with your doctor are also key to controlling your blood pressure. If your blood pressure is well-controlled, check with your doctor about how often you need to check it. Your doctor may suggest checking it daily or less often. If you're making any changes in your medications or other treatments, your doctor may recommend you check your blood pressure starting two weeks after treatment changes and a week before your next appointment. 

10. Get support 

Supportive family and friends can help improve your health. They may encourage you to take care of yourself, drive you to the doctor's office or embark on an exercise program with you to keep your blood pressure low. 

If you find you need support beyond your family and friends, consider joining a support group. This may put you in touch with people who can give you an emotional or morale boost and who can offer practical tips to cope with your condition


''',
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

