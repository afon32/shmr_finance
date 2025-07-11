import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_account.freezed.dart';
part 'db_account.g.dart';

@freezed
abstract class DBAccount with _$DBAccount {
  const factory DBAccount({
    required int id,
    required int? userId,
    required String name,
    required String balance,
    required String currency,
    required String? createdAt,
    required String? updatedAt,
  }) = _DBAccount;

  factory DBAccount.fromJson(Map<String, dynamic> json) => _$DBAccountFromJson(json);
}
