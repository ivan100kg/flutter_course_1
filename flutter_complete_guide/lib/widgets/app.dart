import 'package:flutter/material.dart';
import 'custom_single_child_layout.dart';
import 'layout.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'some title',
      // home: UserProfile(),
      home: Scaffold(
        appBar: AppBar(title: Text('Bar')),
        body: MyCustomSingle(),
      ),
    );
  }
}
