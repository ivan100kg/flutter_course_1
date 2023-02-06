import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('bar'),
        ),
        body: Column(
          children: [
            Text('some text'),
            ElevatedButton(
              onPressed: () => print('pressed1'),
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
