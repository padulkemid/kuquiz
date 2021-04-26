import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  static const questions = [
    {
      'question': "What's your spirit animal ?",
      'answers': ['Dragon', 'Tiger', 'Dog']
    },
    {
      'question': "What's your favorite color ?",
      'answers': ['Black', 'White', 'Blue']
    },
    {
      'question': "What's your bearing size ?",
      'answers': ['35mm', '34mm', '39mm']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kuquiz'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    if (_questionIndex == questions.length -1 ) {
      _questionIndex = -1;
    }

    setState(() {
      _questionIndex += 1;
    });
  }
}
