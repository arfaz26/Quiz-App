import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function ansQuestion;
  Quiz(
      {@required this.questionIndex,
      @required this.ansQuestion,
      @required this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['question']),
        // ... (spread operation) for taking individual items from a nested list which is given out by a map function
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['text'], () => ansQuestion(answer['score']));
        }).toList(),
      ],
    );
  }
}
