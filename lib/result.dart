import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;
  Result(this.score, this.resetQuiz);

  String get resultDisplay {
    return "Your Score is: " + score.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Text(
              resultDisplay,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
            FlatButton(onPressed: resetQuiz, child: Text('RESET Quiz'))
          ],
        ),
      ),
    );
  }
}
