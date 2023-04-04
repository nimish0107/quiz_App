import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import "package:flutter/material.dart";

class questionbutton extends StatelessWidget {
  final String questionText;
  questionbutton(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 25,
          color: Color.fromARGB(255, 193, 2, 63),
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
