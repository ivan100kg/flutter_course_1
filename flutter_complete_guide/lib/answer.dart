import 'package:flutter/material.dart';
import './question.dart';

class Answer extends StatelessWidget {
  final Function question;

  const Answer(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: question,
        child: const Text('Answer 1'),
      ),
    );
  }
}
