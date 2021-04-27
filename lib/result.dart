import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (totalScore <= 10) {
      resultText = 'Noob...';
    } else if (totalScore <= 20) {
      resultText = 'Crusadog...';
    } else if (totalScore <= 30) {
      resultText = 'Immortal...';
    } else {
      resultText = 'Noobest noob of herald!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('Restart!'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
