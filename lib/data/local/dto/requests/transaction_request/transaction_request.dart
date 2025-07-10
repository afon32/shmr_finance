import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_request.freezed.dart';
part 'transaction_request.g.dart';

@freezed
abstract class DBTransaction with _$DBTransaction {
  const factory DBTransaction({
    required int id,
    required int accountId,
    required int categoryId,
    required String amount,
    required String transactionDate,
    required String? comment,
  }) = _DBTransaction;

  factory DBTransaction.fromJson(Map<String, dynamic> json) =>
      _$DBTransactionFromJson(json);
}
