import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(this.colour, {this.cardChild});
  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: colour),
      margin: EdgeInsets.all(15.0),
    );
  }
}
