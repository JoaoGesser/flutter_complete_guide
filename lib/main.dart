import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIntex = 0;

  void answerQuestion() {
    setState(() {
      questionIntex = questionIntex + 1;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first app')),
        body: Column(children: [
          Question(questions.elementAt(questionIntex)),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => print('Anonymous'),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: answerQuestion,
          ),
        ]),
      ),
    );
  }
}
