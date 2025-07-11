import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/data/local/dto/models/common/modify.dart';

part 'db_transaction.freezed.dart';
part 'db_transaction.g.dart';

@freezed
abstract class DBTransaction with _$DBTransaction {
  const factory DBTransaction({
    required String id,
    required int accountId,
    required int categoryId,
    bool? isIncome,
    required String amount,
    required String transactionDate,
    required String? comment,
    required String? createdAt,
    required String? updatedAt,
    required Modification modification,
  }) = _DBTransaction;

  factory DBTransaction.fromJson(Map<String, dynamic> json) =>
      _$DBTransactionFromJson(json);
}
