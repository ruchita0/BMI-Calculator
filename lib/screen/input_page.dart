import 'package:bmi_cal/calculat_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_cal/screen/input_page.dart';
import 'package:bmi_cal/components/icon_content.dart';
import 'package:bmi_cal/components/reusablecard.dart';
import 'package:bmi_cal/constant.dart';
import 'package:bmi_cal/screen/Result_Page.dart';
import 'package:bmi_cal/components/round_icon_button.dart';
import 'package:bmi_cal/components/button_button.dart';

enum gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender? genderselected;
  int height = 180;
  int weight = 60;
  int age = 20;

  /* Color maleCardColor = inactivecardcolor;
  Color femaleCardColor = inactivecardcolor;
  void updatecolor(gender selectedgender) {
    if (selectedgender == gender.male) {
      if (maleCardColor == inactivecardcolor) {
        maleCardColor = activecardcolor;
        femaleCardColor = inactivecardcolor;
      } else {
        maleCardColor = inactivecardcolor;
      }
    }
    if (selectedgender == gender.female) {
      if (femaleCardColor == inactivecardcolor) {
        femaleCardColor = activecardcolor;
        maleCardColor = inactivecardcolor;
      } else {
        femaleCardColor = inactivecardcolor;
      }
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                    child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        colours: genderselected == gender.male
                            ? activecardcolor
                            : inactivecardcolor,
                        onpress: () {
                          setState(() {
                            genderselected = gender.male;
                          });
                        },
                        cardchild: IconContact(
                          icon: FontAwesomeIcons.mars,
                          label: 'male',
                        ),
                      ),
                    ),
                    Expanded(
                        child: ReusableCard(
                      onpress: () {
                        setState(() {
                          genderselected = gender.female;
                        });
                      },
                      colours: genderselected == gender.female
                          ? activecardcolor
                          : inactivecardcolor,
                      cardchild: IconContact(
                        icon: FontAwesomeIcons.venus,
                        label: 'female',
                      ),
                    )),
                  ],
                )),
                Expanded(
                    child: ReusableCard(
                  colours: activecardcolor,
                  cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'height',
                          style: labeltextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: NumberTextstyle,
                            ),
                            Text(
                              'Cm',
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Color(0xFFEB1555),
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Color(0xFF8D8E98),
                            overlayColor: Color(0x29EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Expanded(
                            child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              //  activeColor: Color(0xFFEB1555),

                              onChanged: (double newvalue) {
                                setState(() {
                                  height = newvalue.round();
                                });
                              },
                            ),
                          ),
                        )
                      ]),
                )),
                Expanded(
                    child: Row(
                  children: <Widget>[
                    Expanded(
                        child: ReusableCard(
                            colours: activecardcolor,
                            cardchild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'weight',
                                  style: labeltextstyle,
                                ),
                                Text(
                                  weight.toString(),
                                  style: NumberTextstyle,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onpressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onpressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              ],
                            ))),
                    Expanded(
                        child: ReusableCard(
                            colours: activecardcolor,
                            cardchild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Age',
                                  style: labeltextstyle,
                                ),
                                Text(
                                  age.toString(),
                                  style: NumberTextstyle,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onpressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onpressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              ],
                            ))),
                  ],
                )),
                ButtomButton(
                  buttonTittle: 'cALCULATE',
                  onTap: () {
                    CalculatorBrain clac =
                        CalculatorBrain(height: height, weight: weight);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultPage(
                                  bmiResult: clac.CalculateBMI(),
                                  interpretation: clac.getresult(),
                                  resultText: clac.getinterpretation(),
                                )));
                  },
                ),
              ]
              // floatingActionButton: FloatingActionButton(
              //   child: Icon(Icons.add),
              // ),
              ),
        ));
  }
}

            
           /* Container(
              //  margin: EageInsets.all(15.0),
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.red,
              ),
            ),*/