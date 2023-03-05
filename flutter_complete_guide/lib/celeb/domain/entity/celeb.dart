// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'celeb.g.dart';

@JsonSerializable()
class Celeb {
  final int id;
  final String name;
  @JsonKey(required: false, defaultValue: 0.0)
  final double size;
  @JsonKey(required: false, defaultValue: '')
  final String country;
  @JsonKey(required: false, defaultValue: '')
  final String birthday;

  Celeb({
    required this.id,
    required this.name,
    required this.size,
    required this.country,
    required this.birthday,
  });

  factory Celeb.fromJson(Map<String, dynamic> json) => _$CelebFromJson(json);
  Map<String, dynamic> toJson() => _$CelebToJson(this);
}
