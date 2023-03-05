// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['1почта'],
  );
  return User(
    json['name'] as String,
    json['1почта'] as String? ?? 'sd',
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      '1почта': instance.email,
    };
