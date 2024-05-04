import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: rollDice,
            style: const ButtonStyle(
              overlayColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 238, 228, 138)),
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
              textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 24)),
              foregroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 0, 0, 0)),
            ),
            child: const Text('Roll Dice')),
        const Text(
          'Click the Button',
          style: TextStyle(
              fontSize: 12,
              fontStyle: FontStyle.normal,
              color: Color.fromARGB(255, 220, 167, 9)),
        ),
        const Text(
          'Having a better understanding of Statistics requireds that you put in more effort in the area of practice!',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ],
    );
  }
}
