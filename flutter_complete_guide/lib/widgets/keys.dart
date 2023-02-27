import 'dart:math';

import 'package:flutter/material.dart';

class MyKey extends StatefulWidget {
  const MyKey({super.key});

  @override
  State<MyKey> createState() => _MyKeyState();
}

class _MyKeyState extends State<MyKey> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: PositionedTiles());
  }
}

class PositionedTiles extends StatefulWidget {
  const PositionedTiles({super.key});

  @override
  State<PositionedTiles> createState() => _PositionedTilesState();
}

class _PositionedTilesState extends State<PositionedTiles> {
  List<Widget> tiles = [
    StatelessColorfulTitle(key: UniqueKey(),),
    StatelessColorfulTitle(key: ValueKey('1'),),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: swapTiles, child: Text('toggle')),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tiles,
        )
      ],
    );
  }

  void swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}

class StatelessColorfulTitle extends StatelessWidget {
  StatelessColorfulTitle({super.key});

  final myColor = UniqueGenerator.getColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: myColor,
    );
  }
}

class UniqueGenerator {
  static final _random = Random();
  static Color getColor() {
    return Color.fromRGBO(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      1.0,
    );
  }
}
