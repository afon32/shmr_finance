import 'package:shmr_finance/data/dto/requests/account_create_request/account_create_request.dart';
import 'package:shmr_finance/data/dto/requests/account_update_request/account_update_request.dart';
import 'package:shmr_finance/data/dto/requests/transaction_request/transaction_request.dart';
import 'package:shmr_finance/features/account/data/dto/create_account_use_case_request.dart';
import 'package:shmr_finance/features/account/data/dto/update_account_use_case_request.dart';
import 'package:shmr_finance/features/transactions/data/dto/create_transaction_use_case_request.dart';
import 'package:shmr_finance/features/transactions/data/dto/update_transaction_use_case_request.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';

extension CreateAccountUseCaseRequestX on CreateAccountUseCaseRequest {
  ApiAccountCreateRequest toData() => ApiAccountCreateRequest(
      name: name, balance: balance.toString(), currency: currency.code);
}

extension UpdateAccountUseCaseRequestX on UpdateAccountUseCaseRequest {
  ApiAccountUpdateRequest toData() => ApiAccountUpdateRequest(
      name: name, balance: balance.toString(), currency: currency.code);
}

extension UpdateTransactionUseCaseRequestX on UpdateTransactionUseCaseRequest {
  ApiTransactionRequest toData() => ApiTransactionRequest(
      accountId: accountId,
      categoryId: categoryId,
      amount: amount.toString(),
      transactionDate: transactionDate.toString(),
      comment: comment);
}

extension CreateTransactionUseCaseRequestX on CreateTransactionUseCaseRequest {
  ApiTransactionRequest toData() => ApiTransactionRequest(
      accountId: accountId,
      categoryId: categoryId,
      amount: amount.toString(),
      transactionDate: transactionDate.toString(),
      comment: comment);
}
