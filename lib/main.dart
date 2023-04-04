import "package:flutter/material.dart";

import "./quiz.dart";
import './result.dart';
import './confirm_start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

const questions = [
  {
    'questiontext': 'What\'s your favourite colour?\n',
    'answers': [
      {'text': 'Blue', 'score': 6},
      {'text': 'Red', 'score': 9},
      {'text': 'Yellow', 'score': 10},
      {'text': 'Black', 'score': 5}
    ]
  },
  {
    'questiontext': 'What\'s your favourite animal?\n',
    'answers': [
      {'text': 'Dog', 'score': 6},
      {'text': 'Elephant', 'score': 10},
      {'text': 'Cat', 'score': 5},
      {'text': 'Lion', 'score': 8}
    ]
  },
  {
    'questiontext': 'What\'s your favourite game?\n',
    'answers': [
      {'text': 'Valorant', 'score': 9},
      {'text': 'PUBG', 'score': 7},
      {'text': 'COD:Black Ops', 'score': 6},
      {'text': 'COD:MW2', 'score': 10}
    ]
  }
];

class _MyAppState extends State<MyApp> {
  var yes = false;
  var _total_score = 0;
  void start_quiz() {
    setState(() {
      yes = true;
    });
  }

  void _answer_q(int score) {
    if (_index_q < questions.length) {
      setState(() {
        _index_q += 1;
        _total_score += score;
      });
      print('Answer Chosen \n');
    } else {
      print("No more questions!");
    }
  }

  void _reset_quiz() {
    setState(() {
      _index_q = 0;
      _total_score = 0;
      yes = false;
    });
  }

  var _index_q = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nimish\'s App \n'),
          backgroundColor: Colors.red,
        ),
        body: (yes)
            ? ((_index_q < questions.length)
                ? Quiz(questions, _answer_q, _index_q)
                : Result(_total_score, _reset_quiz))
            : confirm_start(start_quiz),
      ),
    );
  }
}
