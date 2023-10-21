import 'package:flutter/material.dart';

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
          const Padding(
            padding: EdgeInsets.only(top: 60),
            child: Text('Quiz',
                style: TextStyle(
                  fontSize: 20,
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
                label: const Text('Start quiz',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ))),
          )
        ],
      ),
    ));
  }
}
