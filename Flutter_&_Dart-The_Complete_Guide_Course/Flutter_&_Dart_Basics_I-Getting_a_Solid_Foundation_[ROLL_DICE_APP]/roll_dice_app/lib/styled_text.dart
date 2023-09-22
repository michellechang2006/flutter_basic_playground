import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, this.shadowColor, {super.key});
  final String text;
  final Color shadowColor;
  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        shadows: [
          Shadow(
            color: shadowColor,
            blurRadius: 10.0,
            offset: const Offset(3.0, 3.0),
          ),
        ],
      ),
    );
  }
}
