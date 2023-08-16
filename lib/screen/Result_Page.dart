import 'package:bmi_cal/constant.dart';
import 'package:flutter/material.dart';
import '../components/reusablecard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_cal/components/button_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.interpretation,
      required this.bmiResult,
      required this.resultText});
  final String bmiResult;
  final String resultText;

  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: titlestyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colours: activecardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: resulttext,
                    ),
                    Text(
                      bmiResult,
                      style: bmitext,
                    ),
                    Text(
                      interpretation,
                      style: Result_bodytext,
                    ),
                  ],
                ),
              ),
            ),
            ButtomButton(
                buttonTittle: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
