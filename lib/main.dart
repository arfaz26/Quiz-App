import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questonIndex = 0;
  var _questions = [
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

  void _ansQuestion() {
    setState(() {
      _questonIndex += 1;
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
        body: Column(
          children: <Widget>[
            Question(_questions[_questonIndex]['question']),
            // ... (spread operation) for taking individual items from a nested list which is given out by a map function
            ...(_questions[_questonIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(answer, _ansQuestion);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
