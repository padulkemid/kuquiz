import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1!'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2!'),
              onPressed: () => print('answer 2 gemink'),
            ),
            RaisedButton(
              child: Text('Answer 3!'),
              onPressed: () {
                var total = 2 + 3;

                print(total);
              },
            ),
          ],
        ),
      ),
    );
  }

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }
}
