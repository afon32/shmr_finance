import 'package:shmr_finance/data/local/dto/models/export.dart';
import 'package:shmr_finance/model/category.dart';

import 'package:shmr_finance/features/transactions/domain/entities/transaction_account_brief.dart';
import 'package:shmr_finance/features/transactions/domain/entities/transaction_details.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

extension DBTransactionX on DBTransaction {
  TransactionDetails toDomain(DBAccount? account, DBCategory? category) =>
      TransactionDetails(
        id: int.tryParse(id) ?? -1,
        account: account != null
            ? AccountBrief(
                id: account.id,
                name: account.name,
                balance: account.balance,
                currency: Currency.fromString(account.currency))
            : null,
        category: category != null
            ? Category(
                id: category.id,
                name: category.name,
                emoji: category.emoji,
                isIncome: category.isIncome)
            : null,
        amount: double.tryParse(amount) ?? 0.0,
        transactionDate: DateTime.parse(transactionDate),
        comment: comment,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt!) : null,
      );
}
