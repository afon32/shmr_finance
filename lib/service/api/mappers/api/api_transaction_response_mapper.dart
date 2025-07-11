import 'package:shmr_finance/data/local/dto/models/common/modify.dart';
import 'package:shmr_finance/data/local/dto/models/transaction/db_transaction.dart';
import 'package:shmr_finance/data/network/dto/responses/export.dart';
import 'package:shmr_finance/service/api/mappers/api/api_category_mapper.dart';

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

  DBTransaction toLocal() => DBTransaction(
        id: id.toString(),
        accountId: account.id,
        categoryId: category.id,
        isIncome: category.isIncome,
        amount: amount,
        transactionDate: transactionDate,
        comment: comment,
        createdAt: createdAt,
        updatedAt: updatedAt,
        modification: Modification.restored,
      );
}

extension ApiAccountBriefX on ApiAccountBrief {
  AccountBrief toDomain() => AccountBrief(
      id: id,
      name: name,
      balance: balance,
      currency: Currency.fromString(currency));
}
