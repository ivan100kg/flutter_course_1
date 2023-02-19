import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final _controllerOne = TextEditingController(text: 'hello ');
  final _controllerTwo = TextEditingController();
  final _nodeOne = FocusNode();

  void _onChanged(String text) => print('_onChanged $text');

  void _onEditingComplete() => print('_onEditingComplete');

  void _onSubmitted(String text) => print('_onSubmitted $text');

  void _onTab() {
    _controllerOne.clear();
    _controllerOne.addListener(() => print('hui0'));
    _controllerOne.value = TextEditingValue(
      text: 'one',
    );
  }

  void _onAppPrivateCommand(String text, Map args) {
    print('_onAppPrivateCommand $text');
    print('_onAppPrivateCommand $args');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            TextField(
              focusNode: _nodeOne,
              controller: _controllerOne,
              onChanged: _onChanged,
              onEditingComplete: _onEditingComplete,
              onSubmitted: _onSubmitted,
              onTap: _onTab,
              onAppPrivateCommand: _onAppPrivateCommand,
              decoration: InputDecoration(
                labelText: 'with events',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _controllerTwo,
              decoration: InputDecoration(
                labelText: 'without events',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
