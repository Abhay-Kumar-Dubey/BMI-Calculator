import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result_screen.dart';

void main() {
  runApp(const BMI_Calculator());
}

class BMI_Calculator extends StatelessWidget {
  const BMI_Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          appBarTheme: AppBarTheme(color: Color(0xFF0A0E21))),
      home: inputPage(),
    );
  }
}
