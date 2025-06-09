import 'package:shmr_finance/data/dto/responses/export.dart';
import 'package:shmr_finance/data/mappers/api_category_mapper.dart';

import 'package:shmr_finance/features/transactions/domain/entities/transaction_account_brief.dart';
import 'package:shmr_finance/features/transactions/domain/entities/transaction_details.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

extension ApiTransactionResponseX on ApiTransactionResponse {
  TransactionDetails toDomain() => TransactionDetails(
      id: id,
      account: account.toDomain(),
      category: category.toDomain(),
      amount: double.tryParse(amount) ?? 0.0,
      transactionDate: DateTime.parse(transactionDate),
      comment: comment,
      createdAt: DateTime.parse(createdAt),
      updatedAt: DateTime.parse(updatedAt));
}

extension ApiAccountBriefX on ApiAccountBrief {
  AccountBrief toDomain() => AccountBrief(
      id: id,
      name: name,
      balance: balance,
      currency: Currency.fromString(currency));
}
