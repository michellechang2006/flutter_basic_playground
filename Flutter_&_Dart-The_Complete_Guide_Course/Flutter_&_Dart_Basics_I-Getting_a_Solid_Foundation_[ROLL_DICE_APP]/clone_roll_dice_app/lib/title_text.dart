import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});
  @override
  Widget build(context) {
    return Text(
      'Roll Dice App',
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.w900,
        color: HexColor("#190660"),
        letterSpacing: 2
      ),
    );
  }
}
