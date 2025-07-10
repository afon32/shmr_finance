// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiCategory _$ApiCategoryFromJson(Map<String, dynamic> json) => _ApiCategory(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      emoji: json['emoji'] as String,
      isIncome: json['isIncome'] as bool,
    );

Map<String, dynamic> _$ApiCategoryToJson(_ApiCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'emoji': instance.emoji,
      'isIncome': instance.isIncome,
    };
