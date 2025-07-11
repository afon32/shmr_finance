import 'package:shmr_finance/data/local/dto/models/export.dart';
import 'package:shmr_finance/features/account/domain/entities/account.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

extension AccountX on Account {
  DBAccount toLocal() => DBAccount(
        id: id,
        userId: userId,
        name: name,
        balance: balance.toString(),
        currency: currency.code,
        createdAt: createdAt?.toString(),
        updatedAt: updatedAt?.toString(),
      );
}
