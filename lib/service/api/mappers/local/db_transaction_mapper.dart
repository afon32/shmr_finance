import 'package:shmr_finance/data/local/dto/models/export.dart';
import 'package:shmr_finance/model/category.dart';

import 'package:shmr_finance/features/transactions/domain/entities/transaction_account_brief.dart';
import 'package:shmr_finance/features/transactions/domain/entities/transaction_details.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

extension DBTransactionX on DBTransaction {
  TransactionDetails toDomain(DBAccount account, DBCategory category) =>
      TransactionDetails(
          id: id,
          account: AccountBrief(
              id: account.id,
              name: account.name,
              balance: account.balance,
              currency: Currency.fromString(account.currency)),
          category: Category(
              id: category.id,
              name: category.name,
              emoji: category.emoji,
              isIncome: category.isIncome),
          amount: double.tryParse(amount) ?? 0.0,
          transactionDate: DateTime.parse(transactionDate),
          comment: comment,
          createdAt: DateTime.tryParse(createdAt!),
          updatedAt: DateTime.tryParse(updatedAt!));
}
