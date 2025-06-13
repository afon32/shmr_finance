import 'package:shmr_finance/features/account/domain/entities/account.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

import '../../../data/dto/responses/account_dto/account_dto.dart';

extension ApiAccountX on ApiAccount {
  Account toDomain() => Account(
      id: id,
      userId: userId,
      name: name,
      balance: double.tryParse(balance) ?? 0.0,
      currency: Currency.fromString(currency),
      createdAt: DateTime.parse(createdAt),
      updatedAt: DateTime.parse(updatedAt));
}
