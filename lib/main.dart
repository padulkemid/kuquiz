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

  @override
  Widget build(BuildContext context) {
    var questions = ["What's your spirit animal ?", "What's your age ?"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kuquiz'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }
}
