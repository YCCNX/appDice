import 'package:flutter/material.dart';
import 'dart:math';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 1;

  void rollDice() {
    setState(() {
      currentDice = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'asset/images/dice-$currentDice.png',
          width: 200,
        ),
        const SizedBox(
          height: 25,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
