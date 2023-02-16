import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyButtons extends StatefulWidget {
  const MyButtons({super.key});

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  String _text = '';
  void foo() {
    setState(() {
      _text = 'Иди в очко!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(_text),
          ElevatedButton(
            onPressed: () => print('pressed ElevatedButton'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber)),
            child: Text('press ElevatedButton'),
          ),
          OutlinedButton(
            onPressed: () => print('pressed OutlinedButton'),
            child: Text('press OutlinedButton'),
          ),
          TextButton(
            onPressed: () => print('pressed TextButton'),
            child: Text('press TextButton'),
          ),
          IconButton(
            onPressed: foo,
            iconSize: 50,
            splashRadius: 100,
            icon: Icon(
              Icons.find_in_page,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
