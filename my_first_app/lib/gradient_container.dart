import 'package:flutter/material.dart';
import 'package:my_first_app/dice_roller.dart';
// import 'package:my_first_app/styled_text.dart';

//if variable is declared using const then we can use it inside a const widget
//if variable is declared using var then we cant use it inside a const widget
const gradientStart = Alignment.topLeft;
const gradientEnd = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //2 ways to pass the key to the parent class
  // const GradientContainer({key}): super(key:key);
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  

  @override
  // context -> metadata object which contains info about this widget in the overall widget tree
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: gradientStart, end: gradientEnd),
      ),
      child: Center(
          child:DiceRoller() ),
    );
  }
}
