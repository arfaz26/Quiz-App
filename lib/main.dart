import 'package:flutter/material.dart';
// import 'package:quiz_app/answer.dart';
// import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  static const _questions = [
    {
      'question': 'Which is your favourite color?',
      'answer': ['Red', 'Green', 'Blue', 'Yellow']
    },
    {
      'question': 'Which is your favourite city?',
      'answer': ['Mumbai', 'New York', 'Tokyo', 'Delhii']
    },
    {
      'question': 'Which is your favourite animal?',
      'answer': ['Dog', 'Elephant', 'Tiger', 'lion']
    },
  ];
  bool check = true;
  void _ansQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    // if (_questonIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                ansQuestion: _ansQuestion,
                questions: _questions)
            : Result(),
      ),
    );
  }
}
