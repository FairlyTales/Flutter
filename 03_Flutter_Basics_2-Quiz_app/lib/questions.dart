import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './data/questionsData.dart';
import 'models/answer.dart';

class Questions extends StatefulWidget {
  const Questions(this.saveAnswer, {super.key});

  final void Function(Answer answer) saveAnswer;

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var questionIndex = 0;

  void handleSelectAnswer(Answer answer) {
    widget.saveAnswer(answer);

    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = questionsData[questionIndex];

    return SizedBox(
        width: double.infinity,
        child: Container(
          padding: const EdgeInsets.all(36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(question.text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              ...question.getShuffledAnswers().map((answer) => Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                    onPressed: () => handleSelectAnswer(answer),
                    child: Text(answer.text,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  )))
            ],
          ),
        ));
  }
}
