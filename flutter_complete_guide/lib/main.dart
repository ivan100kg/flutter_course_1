import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Text('Hello!'),
    );
  }
}

class Person {
  String name;
  int age;

  Person({this.name, this.age});
}
