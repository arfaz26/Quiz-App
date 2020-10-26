import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _totalScore = 0;
  int _questionIndex = 0;
  static const _questions = [
    {
      'question': 'Which is your favourite color?',
      'answer': [
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 3},
        {'text': 'Yellow', 'score': 4},
      ]
    },
    {
      'question': 'Which is your favourite city?',
      'answer': [
        {'text': 'Delhi', 'score': 1},
        {'text': 'Goa', 'score': 2},
        {'text': 'Mumbai', 'score': 3},
        {'text': 'Kerela', 'score': 4},
      ]
    },
    {
      'question': 'Which is your favourite animal?',
      'answer': [
        {'text': 'Tiger', 'score': 1},
        {'text': 'Lion', 'score': 2},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Dog', 'score': 4},
      ]
    },
  ];
  bool check = true;
  void _ansQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
