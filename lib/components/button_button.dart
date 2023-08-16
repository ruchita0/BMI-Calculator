import 'package:flutter/material.dart';
import 'package:bmi_cal/constant.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.buttonTittle, @required this.onTap}) {}
  final VoidCallback? onTap;
  final String? buttonTittle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      //() {
      // Navigator.push(
      //    context, MaterialPageRoute(builder: (context) => ResultPage()));
      //},
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        color: buttomcontainercolor,
        width: double.infinity,
        height: buttomcontainer,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            buttonTittle.toString(),
            style: labeltextstyle,
          ),
        ),
      ),
    );
  }
}
