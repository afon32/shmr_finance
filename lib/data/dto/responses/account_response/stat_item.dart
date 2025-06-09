import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_item.freezed.dart';
part 'stat_item.g.dart';

@freezed
abstract class ApiStatItem with _$ApiStatItem {
  const factory ApiStatItem(
      {required int categoryId,
      required String categoryName,
      required String emoji,
      required String amount}) = _StatItem;

  factory ApiStatItem.fromJson(Map<String, dynamic> json) =>
      _$ApiStatItemFromJson(json);
}
