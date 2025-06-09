import 'package:shmr_finance/data/dto/requests/export.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

class UpdateAccountUseCaseRequest {
  final int id;
  final String name;
  final double balance;
  final Currency currency;

  UpdateAccountUseCaseRequest(
      {required this.id,
      required this.name,
      required this.balance,
      required this.currency});
}

extension UpdateAccountUseCaseRequestX on UpdateAccountUseCaseRequest {
  ApiAccountUpdateRequest toData() => ApiAccountUpdateRequest(
      name: name, balance: balance.toString(), currency: currency.code);
}
