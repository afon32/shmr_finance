import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_dto.freezed.dart';
part 'account_dto.g.dart';

@freezed
abstract class ApiAccount with _$ApiAccount {
  const factory ApiAccount({
    required int id,
    required int userId,
    required String name,
    required String balance,
    required String currency,
    required String createdAt,
    required String updatedAt,
  }) = _ApiAccount;

  factory ApiAccount.fromJson(Map<String, dynamic> json) => _$ApiAccountFromJson(json);
}
