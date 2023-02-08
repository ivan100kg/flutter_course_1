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
      questionIndex++;
    });
    print(questionIndex);
  }

  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'Blue', 'White']
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': ['Rabbit', 'Bear', 'Tiger', 'Mouse']
    },
    {
      'questionText': 'Who is yor favorite celebrities?',
      'answers': ['Margo Robbie', 'Aenold Schwarzenegger']
    },
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
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((e) => Answer(_answerQuestion, e))
                .toList(),
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


// 047