// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DBCategory _$DBCategoryFromJson(Map<String, dynamic> json) => _DBCategory(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      emoji: json['emoji'] as String,
      isIncome: json['isIncome'] as bool,
    );

Map<String, dynamic> _$DBCategoryToJson(_DBCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'emoji': instance.emoji,
      'isIncome': instance.isIncome,
    };
