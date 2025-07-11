import 'package:shmr_finance/data/local/dto/models/export.dart';
import 'package:shmr_finance/features/account/domain/entities/account.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

extension DBAccountX on DBAccount {
  Account toDomain() => Account(
      id: id,
      userId: userId,
      name: name,
      balance: double.tryParse(balance) ?? 0.0,
      currency: Currency.fromString(currency),
      createdAt: DateTime.tryParse(createdAt!),
      updatedAt: DateTime.tryParse(updatedAt!));

 static DBAccount fromDomain(Account a) => DBAccount(
        id: a.id,
        userId: a.userId,
        name: a.name,
        balance: a.balance.toString(),
        currency: a.currency.code,
        createdAt: a.createdAt?.toString(),
        updatedAt: a.updatedAt?.toString(),
      );
}
