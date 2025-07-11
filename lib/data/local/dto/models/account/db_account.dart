import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/data/local/dto/models/common/modify.dart';

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
    required Modification modification,
  }) = _DBAccount;

  factory DBAccount.fromJson(Map<String, dynamic> json) => _$DBAccountFromJson(json);
}
