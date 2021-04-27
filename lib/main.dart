import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  static const _questions = [
    {
      'question': "What's your spirit animal ?",
      'answers': [
        {'text': 'Dragon', 'score': 10},
        {'text': 'Tiger', 'score': 8},
        {'text': 'Dog', 'score': 5},
      ],
    },
    {
      'question': "What's your favorite color ?",
      'answers': [
        {'text': 'Blue', 'score': 5},
        {'text': 'White', 'score': 8},
        {'text': 'Black', 'score': 10},
      ],
    },
    {
      'question': "What's your bearing size ?",
      'answers': [
        {'text': '35mm', 'score': 10},
        {'text': '39mm', 'score': 5},
        {'text': '34mm', 'score': 8},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kuquiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
}
