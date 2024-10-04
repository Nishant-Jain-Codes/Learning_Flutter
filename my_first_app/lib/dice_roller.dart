import 'package:flutter/material.dart';
import 'dart:math';
final randomizer = Random();
class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState(); 
  }
}
class _DiceRollerState extends State<DiceRoller> {
  var diceValue = 1;
  void rollDice() {
    setState((){
      diceValue= randomizer.nextInt(6) + 1;
    });
  }
  @override
  Widget build(context){
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$diceValue.png',
            width: 200,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              // padding: const EdgeInsets.only(
              //   top:100,
              // ),
            ),
            child: const Text('Roll Dice'),
          )
        ],
      );
  }
}