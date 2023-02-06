import 'package:flutter/material.dart';

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

  void answerQuestion() {
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
          title: Text('bar'),
        ),
        body: Column(
          children: [
            Text(listPhrases[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print('pressed2'),
              child: Text('answer 2'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('answer 3'),
            ),
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
