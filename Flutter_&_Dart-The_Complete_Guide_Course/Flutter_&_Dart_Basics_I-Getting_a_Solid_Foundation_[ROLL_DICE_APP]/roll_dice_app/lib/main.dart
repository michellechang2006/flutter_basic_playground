import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Kalam-Bold'),
      home: const Scaffold(
        body: GradientContainer(
          [Color.fromARGB(255, 18, 81, 133), Colors.lightBlue],
        ),
      ),
    ),
  );
}
