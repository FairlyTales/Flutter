import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(startQuiz);
  }

  void startQuiz() {
    setState(() {
      activeScreen = const Questions();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(210, 0, 0, 248),
              Color.fromARGB(240, 107, 15, 248),
            ])),
        child: activeScreen,
      )),
    );
  }
}
