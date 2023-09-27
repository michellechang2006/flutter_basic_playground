import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  Widget? activeScreen;
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromRGBO(85, 60, 139, 1),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(150, 126, 200, 1),
                Color.fromRGBO(85, 60, 139, 1),
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
