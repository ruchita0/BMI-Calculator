import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colours, this.cardchild, this.onpress});
  final Color? colours;
  final Widget? cardchild;
  final VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        //  margin: EageInsets.all(15.0),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colours,
        ),
        child: cardchild,
      ),
    );
  }
}
