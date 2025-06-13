import 'package:shmr_finance/model/common_enums/currency_enum.dart';

class CreateAccountUseCaseRequest {
  final String name;
  final double balance;
  final Currency currency;

  CreateAccountUseCaseRequest(
      {required this.name, required this.balance, required this.currency});
}

