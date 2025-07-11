import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_category.freezed.dart';
part 'db_category.g.dart';

@freezed
abstract class DBCategory with _$DBCategory {
  const factory DBCategory({
    required int id,
    required String name,
    required String emoji,
    required bool isIncome,
  }) = _DBCategory;

  factory DBCategory.fromJson(Map<String, dynamic> json) =>
      _$DBCategoryFromJson(json);
}
