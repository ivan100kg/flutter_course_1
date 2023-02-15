import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        fit: StackFit.loose,
        alignment: Alignment.center,
        children: [
          Container(
            color: Colors.black,
            width: 400,
            height: 400,
          ),
          Container(
            color: Colors.yellow,
            width: 300,
            height: 300,
          ),
          Positioned(
            left: 40,
            child: Container(
              color: Colors.green,
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
