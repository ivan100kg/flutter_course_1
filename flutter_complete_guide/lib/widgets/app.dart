import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/user_profile.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'some title',
      home: UserProfile(),
    );
  }
}
