import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/answer.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.answers, this.handleStartQuiz, {super.key});

  final List<Answer> answers;
  final void Function() handleStartQuiz;

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
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: FilledButton.icon(
              style: FilledButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
              onPressed: handleStartQuiz,
              icon: const Icon(Icons.keyboard_arrow_right_rounded),
              label: Text('Try again',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ))),
        )
      ],
    )));
  }
}
