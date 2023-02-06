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
        body: Text('Body text here'),
      ),
    );
  }
}

class Person {
  String name;
  int age;

  Person({this.name, this.age});
}
