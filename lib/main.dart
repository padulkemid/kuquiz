import 'package:flutter/material.dart';
// import './constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('Kuquiz'),
            ),
            body: Column(
                children: [
                  Text('Question!'),
                  RaisedButton(
                      child: Text('Answer 1!'),
                      onPressed: null,
                  ),
                  RaisedButton(
                      child: Text('Answer 2!'),
                      onPressed: null,
                  ),
                  RaisedButton(
                      child: Text('Answer 3!'),
                      onPressed: null,
                  ),
                ],
            ),
        ),
    );
  }
}
