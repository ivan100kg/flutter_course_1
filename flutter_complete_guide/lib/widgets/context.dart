import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_complete_guide/main.dart';
import 'package:flutter_complete_guide/widgets/app.dart';

class MyContext extends StatefulWidget {
  const MyContext({super.key});

  @override
  State<MyContext> createState() => _MyContextState();
}

class _MyContextState extends State<MyContext> {
  void fooMyContext() {
    print('MyContext');
  }

  @override
  Widget build(BuildContext context) {
    return MyContextInto();
  }
}

class MyContextInto extends StatelessWidget {
  const MyContextInto({super.key});

  void fooMyContextInto() {
    print('MyContextInto');
  }

  void foo(BuildContext context) {
    print(context);
    print(context.findAncestorStateOfType());
    print(context.findRootAncestorStateOfType());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => foo(context),
        child: Text('press'),
      ),
    );
  }
}
