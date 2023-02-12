import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyCenter());
}

class MyCenter extends StatefulWidget {
  @override
  State<MyCenter> createState() => _MyCenterState();
}

class _MyCenterState extends State<MyCenter> {
  var inc = 0;
  void foo() {
    setState(() {
      inc++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // elevation: 120,
          title: const Center(child: Text('My app')),
        ),
        body: Center(
          child: Column(
            children: [
              const Text("Hello"),
              Text('bitch $inc'),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: foo,
          child: const Icon(Icons.access_time_sharp),
          tooltip: 'my button',
        ),
      ),
    );
  }
}
