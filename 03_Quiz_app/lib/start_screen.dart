import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.handleStartQuiz, {super.key});

  final void Function() handleStartQuiz;

  @override
  Widget build(context) {
    return (Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(210, 255, 255, 255),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Text('Quiz',
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
                label: Text('Start quiz',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ))),
          )
        ],
      ),
    ));
  }
}
