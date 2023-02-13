import 'package:flutter/material.dart';
import './question.dart';

class Answer extends StatelessWidget {
  final Function question;
  final String answerText;

  const Answer(this.question, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: null,
        child: Text(answerText),
      ),
    );
  }
  
}
