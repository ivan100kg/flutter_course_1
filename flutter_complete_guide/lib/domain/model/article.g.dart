// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id'],
  );
  return Article(
    userID: json['userId'] as int,
    id: json['id'] as int,
    title: json['title'] as String? ?? 'empty',
    body: json['body'] as String,
  );
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'userId': instance.userID,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
