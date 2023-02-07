import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (questionIndex < listPhrases.length - 1) {
        questionIndex++;
      } else if (questionIndex >= listPhrases.length - 1) {
        questionIndex--;
      }
    });
    print(questionIndex);
  }

  var listPhrases = <String>[
    'What is your favorite color?',
    'What is your favorite animal?',
  ];

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('bar'),
        ),
        body: Column(
          children: [
            Question(listPhrases[questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}

class Person {
  String name;
  int age;

  Person({this.name, this.age});
}
