import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  Result(this.score);

  String get resultDisplay {
    return "Your Score is: " + score.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          resultDisplay,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
        ),
      ),
    );
  }
}
