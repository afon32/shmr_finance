import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_brief.freezed.dart';
part 'account_brief.g.dart';

@freezed
abstract class ApiAccountBrief with _$ApiAccountBrief {
  const factory ApiAccountBrief({
    required int id,
    required String name,
    required String balance,
    required String currency,
  }) = _ApiAccountBrief;

  factory ApiAccountBrief.fromJson(Map<String, dynamic> json) => _$ApiAccountBriefFromJson(json);
}
