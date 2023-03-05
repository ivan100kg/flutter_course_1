// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'celeb.g.dart';

@JsonSerializable()
class Celeb {
  final int id;
  final String name;
  final double size;
  final String country;
  final String birthday;

  Celeb({
    required this.id,
    required this.name,
    required this.size,
    required this.country,
    required this.birthday,
  });



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'size': size,
      'country': country,
      'birthday': birthday,
    };
  }

  factory Celeb.fromMap(Map<String, dynamic> map) {
    return Celeb(
      id: map['id'] as int,
      name: map['name'] as String,
      size: map['size'] as double,
      country: map['country'] as String,
      birthday: map['birthday'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Celeb.fromJson(String source) => Celeb.fromMap(json.decode(source) as Map<String, dynamic>);
}
