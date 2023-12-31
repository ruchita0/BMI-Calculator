import 'package:bmi_cal/main.dart';
import 'package:flutter/material.dart';
import 'package:bmi_cal/constant.dart';

class IconContact extends StatelessWidget {
  IconContact({this.icon, this.label});
  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: labeltextstyle,
        )
      ],
    );
  }
}
