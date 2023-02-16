import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Container(
          height: 100,
          color: Colors.blue,
        ),
        Container(
          height: 150,
          color: Colors.red,
        ),
        Container(
          height: 120,
          color: Colors.green,
        ),
        Container(
          height: 40,
          color: Colors.grey,
        ),
        _MyCont(),
      ],
    );
  }
}

class _MyCont extends StatefulWidget {
  const _MyCont({super.key});

  @override
  State<_MyCont> createState() => _MyContState();
}

class _MyContState extends State<_MyCont> {
  @override
  void initState() {
    super.initState();
    print('init 1');
  }

  @override
  Widget build(BuildContext context) {
    print('build 2');
    return Container(
      height: 50,
      color: Colors.yellow,
    );
  }
}
