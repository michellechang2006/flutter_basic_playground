import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.deepPurple, Colors.purple]),
          ),
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  'Hello World!',
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kalam-Bold'),
                ),
              ],
              totalRepeatCount: 1,
            ),
          ),
        ),
      ),
    ),
  );
}
