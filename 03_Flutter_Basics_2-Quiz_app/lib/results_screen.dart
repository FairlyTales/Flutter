import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/answer.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.answers, {super.key});

  final List<Answer> answers;

  @override
  Widget build(context) {
    final int correctAnswerAmount =
        answers.fold(0, (prev, answer) => answer.isCorrect ? ++prev : prev);

    return (Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Text(
              'You have correctly answered $correctAnswerAmount questions out of ${answers.length}',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        )
      ],
    )));
  }
}
