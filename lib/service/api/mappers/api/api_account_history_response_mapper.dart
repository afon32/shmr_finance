import 'package:shmr_finance/data/dto/responses/export.dart';
import 'package:shmr_finance/features/account/domain/entities/account_history.dart';
import 'package:shmr_finance/features/account/domain/entities/account_history_item.dart';
import 'package:shmr_finance/features/account/domain/entities/account_state.dart';
import 'package:shmr_finance/features/account/domain/entities/change_type_enum.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

extension ApiAccountHistoryResponseX on ApiAccountHistoryResponse {
  AccountHistory toDomain() => AccountHistory(
      accountId: accountId,
      accountName: accountName,
      currency: Currency.fromString(currency),
      currentBalance: double.tryParse(currentBalance) ?? 0.0,
      history: history.map((e) => e.toDomain()).toList());
}

extension ApiAccountHistoryX on ApiAccountHistory {
  AccountHistoryItem toDomain() => AccountHistoryItem(
      id: id,
      changeType: ChangeType.fromString(changeType),
      previousState: previousState.toDomain(),
      newState: newState.toDomain(),
      changeDateTime:
          DateTime.fromMillisecondsSinceEpoch(int.parse(changeTimestamp)),
      createdAt: DateTime.parse(createdAt));
}

extension ApiAccountStateX on ApiAccountState {
  AccountState toDomain() => AccountState(
      id: id,
      name: name,
      balance: balance,
      currency: Currency.fromString(currency));
}
