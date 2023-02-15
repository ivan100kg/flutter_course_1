import 'package:flutter/material.dart';

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            // width: double.infinity,
            height: 300,
            width: 300,
            padding: EdgeInsets.all(50),
            color: Colors.amber,
            constraints: BoxConstraints(maxHeight: 150),
            child: Container(
              color: Colors.deepOrange,
              margin: EdgeInsets.only(left: 50),
              child: Text(
                'Hello',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
