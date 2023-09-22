import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color, {super.key});

  final List<Color> color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: color,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
