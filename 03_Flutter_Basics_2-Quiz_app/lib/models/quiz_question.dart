import 'answer.dart';

class QuizQuestion {
  final String text;
  final List<Answer> answers;

  const QuizQuestion(this.text, this.answers);

  List<Answer> get shuffledAnswers {
    final list = List.of(answers);
    list.shuffle();

    return list;
  }
}
