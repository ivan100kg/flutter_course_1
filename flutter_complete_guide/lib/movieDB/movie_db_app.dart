import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/movieDB/auth/auth_widget.dart';

class MovieDB extends StatelessWidget {
  const MovieDB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Movie DB',
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(backgroundColor: Color.fromARGB(255, 0, 34, 61))),
      home: AuthWidget(),
    );
  }
}
