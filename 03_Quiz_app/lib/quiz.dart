import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'questions.dart';
import 'results_screen.dart';
import './data/questionsData.dart';
import 'models/answer.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<Answer> selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(startQuiz);
  }

  void saveAnswer(Answer answer) {
    selectedAnswers.add(answer);

    if (questionsData.length == selectedAnswers.length) {
      setState(() {
        activeScreen = ResultsScreen(selectedAnswers, startQuiz);
      });
    }
  }

  void startQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = Questions(saveAnswer);
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
