import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

class Article {
  @JsonKey(name: 'userId')
  final int userID;
  @JsonKey(required: true)
  final int id;
  @JsonKey(defaultValue: 'empty')
  final String title;
  final String body;

  Article({
    required this.userID,
    required this.id,
    required this.title,
    required this.body,
  });

  
}
