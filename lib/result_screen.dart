import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {required this.bmivalue, required this.bmiText, required this.bmiImage});
  final String bmivalue;
  final String bmiText;
  final String bmiImage;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                kInactivecolour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmiText.toUpperCase(),
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image(
                      image: AssetImage(bmiImage),
                    ),
                    Text(
                      bmivalue,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Text(
                    //   'Your body weight is a little more than u shoud have ',
                    //   style: kLabelTextStyle,
                    // )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        'RE-CALCULATE',
                        style: kLabelTextStyle.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                height: kBottomContainerHeight,
                width: double.infinity,
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
