// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'celeb.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Celeb _$CelebFromJson(Map<String, dynamic> json) => Celeb(
      id: json['id'] as int,
      name: json['name'] as String,
      size: (json['size'] as num).toDouble(),
      country: json['country'] as String,
      birthday: json['birthday'] as String,
    );

Map<String, dynamic> _$CelebToJson(Celeb instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'size': instance.size,
      'country': instance.country,
      'birthday': instance.birthday,
    };
