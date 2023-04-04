import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import './questionbutton.dart';
import './answerbutton.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function _answer_q;
  final int _index_q;
  const Quiz(this.questions, this._answer_q, this._index_q);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Text('Name : Nimish Duggal,\nRoll Number : 102217073\n',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )),
        ),
        // Text(questions[_index_q]),
        questionbutton(questions[_index_q]['questiontext']
            as String), // used widget made by our own
        ...(questions[_index_q]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return answerbutton((answer['text'] as String),
              (() => _answer_q(answer['score'] as int)));
        }).toList(),
      ],
    );
  }
}
