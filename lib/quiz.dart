import 'package:flutter/material.dart';
import 'package:test_app/question.dart';
import 'package:test_app/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  const Quiz(
      {Key? key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questionText: (questions[questionIndex]['questionText'] as String),
      ),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => answerQuestion(answer['score']), answer['text']);
      }).toList()
    ]);
  }
}
