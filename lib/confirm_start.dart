import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class confirm_start extends StatelessWidget {
  final VoidCallback start;
  const confirm_start(this.start);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            "This is developed by Nimish Duggal,\n\nRoll Number : 102217073",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          margin: EdgeInsets.all(30),
        ),
        ElevatedButton(
          onPressed: start,
          child: Text("Start"),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red)),
        )
      ],
    );
  }
}
