import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_complete_guide/learn-data/human.dart';
import 'package:flutter_complete_guide/learn-data/json_data.dart';

class MyJSON extends StatelessWidget {
  const MyJSON({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('decode'),
            onPressed: JsonCoding.decode,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('encode'),
            onPressed: JsonCoding.encode,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('get'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class JsonCoding {
  static void encode() {
    try {
      final objects = humans.map((e) => e.toJson()).toList();
      final jsonString = jsonEncode(objects);
      print(jsonString);
    } catch (e) {
      print(e);
    }
  }

  static void decode() {
    try {
      final json = jsonDecode(jsonString) as List<dynamic>;
      final humans = json
          .map((dynamic e) => Human.fromJson(e as Map<String, dynamic>))
          .toList();
      print(humans);
    } catch (e) {
      print(e);
    }
  }
}
