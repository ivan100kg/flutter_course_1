import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(2),
      child: Text(
        questionText,
        style: const TextStyle(
            fontSize: 28, fontFamily: 'Rubik', fontWeight: FontWeight.w700),
        textAlign: TextAlign.center,
      ),
    );
  }
}
