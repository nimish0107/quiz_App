import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback reset;
  const Result(this.score, this.reset);
  String get resultPhrase {
    var resultText;
    if (score <= 20) {
      resultText = ' You are a nerd';
    } else if (score <= 25) {
      resultText = 'You are awesome in your own way';
    } else {
      resultText = 'You are super cool';
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
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
              child: Text('Restart Quiz !'),
              onPressed: reset,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red,
                  side: BorderSide(color: Colors.red))),
        ],
      ),
    );
  }
}
