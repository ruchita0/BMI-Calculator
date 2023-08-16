import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  // const RoundIconButton({super.key});
  //final Widget? Child;
  final IconData? icon;
  final VoidCallback onpressed;
  RoundIconButton({this.icon, required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      onPressed: onpressed,
      elevation: 0.0,
    );
  }
}
