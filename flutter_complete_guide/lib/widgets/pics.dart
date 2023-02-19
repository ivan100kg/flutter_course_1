import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_complete_guide/widgets/screens/app_images.dart';

class Mypic extends StatefulWidget {
  const Mypic({super.key});

  @override
  State<Mypic> createState() => _MypicState();
}

class _MypicState extends State<Mypic> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: AppImages.audio,
        width: 400,
        height: 100,
      ),
    );
  }
}
