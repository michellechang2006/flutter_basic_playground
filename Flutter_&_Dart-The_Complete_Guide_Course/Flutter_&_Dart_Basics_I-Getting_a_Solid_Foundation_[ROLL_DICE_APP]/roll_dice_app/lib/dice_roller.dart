import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = Random().nextInt(6) + 1;

  void randomImages() {
    setState(
      () {
        diceRoll = Random().nextInt(6) + 1;
        print(diceRoll);
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Roll Dice APP',
          style: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 50),
        ),
        Image.asset(
          'assets/pics/dice-$diceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: randomImages,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
              backgroundColor: Colors.lightBlue,
              padding: const EdgeInsets.only(right: 20, left: 20),
              shadowColor: const Color.fromARGB(255, 18, 81, 133)),
          child: const Text(
            "Play",
            style: TextStyle(fontFamily: 'Kalam-Bold'),
          ),
        ),
      ],
    );
  }
}
