import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import "./main.dart";

class answerbutton extends StatelessWidget {
  final String choice;
  final VoidCallback action_func;
  // int index;
  answerbutton(this.choice, this.action_func);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.red,
        margin: EdgeInsets.all(20),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: action_func,
            child: Text(
              choice,
              style: TextStyle(color: Colors.white),
            )));
  }
}
