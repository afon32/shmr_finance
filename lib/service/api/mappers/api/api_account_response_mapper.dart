import 'package:shmr_finance/data/network/dto/responses/account_response/stat_item.dart';
import 'package:shmr_finance/data/network/dto/responses/export.dart';
import 'package:shmr_finance/features/account/domain/entities/account_details.dart';
import 'package:shmr_finance/features/account/domain/entities/stat_item.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

extension ApiAccountResponseX on ApiAccountResponse {
  AccountDetails toDomain() => AccountDetails(
      id: id,
      name: name,
      balance: double.tryParse(balance) ?? 0.0,
      currency: Currency.fromString(currency),
      incomeStats: incomeStats.map((e) => e.toDomain()).toList(),
      expenseStats: incomeStats.map((e) => e.toDomain()).toList(),
      createdAt: DateTime.parse(createdAt),
      updatedAt: DateTime.parse(updatedAt));
}

extension ApiStatItemX on ApiStatItem {
  StatItem toDomain() => StatItem(
      categoryId: categoryId,
      categoryName: categoryName,
      emoji: emoji,
      amount: double.tryParse(amount) ?? 0.0);
}
