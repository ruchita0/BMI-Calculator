import 'package:flutter/material.dart';
import 'screen/input_page.dart';
import 'package:bmi_cal/components/icon_content.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // primaryColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(color: Color(0xFF0A0E21)),

        ///Color(0XFF0A0E21)
      ),
      home: InputPage(),
    );
  }
}
