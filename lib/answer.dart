import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function answerQuestion;
  Answer(this.answer, this.answerQuestion);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueAccent,
        onPressed: answerQuestion,
        child: Text(
          answer,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
