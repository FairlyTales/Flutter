import '../models/quiz_question.dart';
import '../models/answer.dart';

final List<QuizQuestion> questionsData = [
  QuizQuestion('Question 1', [
    Answer('Answer 1', 1, true),
    Answer('Answer 2', 2, false),
    Answer('Answer 3', 3, false),
    Answer('Answer 4', 4, false),
  ]),
  QuizQuestion('Question 2', [
    Answer('Answer 1', 1, false),
    Answer('Answer 2', 2, true),
    Answer('Answer 3', 3, false),
    Answer('Answer 4', 4, false),
  ]),
  QuizQuestion('Question 3', [
    Answer('Answer 1', 1, false),
    Answer('Answer 2', 2, false),
    Answer('Answer 3', 3, true),
    Answer('Answer 4', 4, false),
  ]),
  QuizQuestion('Question 4', [
    Answer('Answer 1', 1, false),
    Answer('Answer 2', 2, false),
    Answer('Answer 3', 3, false),
    Answer('Answer 4', 4, true),
  ]),
];
