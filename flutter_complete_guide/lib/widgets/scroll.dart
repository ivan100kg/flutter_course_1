import 'package:flutter/material.dart';

class MyScroll extends StatefulWidget {
  MyScroll({super.key});

  @override
  State<MyScroll> createState() => _MyScrollState();
}

class _MyScrollState extends State<MyScroll> {
  List<Widget> widgets = [];

  final controller = ScrollController(initialScrollOffset: 200);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () => controller.jumpTo(400));
  }

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 100; i++) {
      widgets.add(Text('$i some text'));
    }
    return Center(
        child: Container(
            width: 100,
            height: 100,
            child: SingleChildScrollView(
              controller: controller,
              scrollDirection: Axis.vertical,
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: widgets,
              ),
            )));
  }
}
