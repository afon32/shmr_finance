import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
abstract class ApiCategory with _$ApiCategory {
  const factory ApiCategory({
    required int id,
    required String name,
    required String emoji,
    required bool isIncome
  }) = _ApiCategory;

  factory ApiCategory.fromJson(Map<String, dynamic> json) => _$ApiCategoryFromJson(json);
}
