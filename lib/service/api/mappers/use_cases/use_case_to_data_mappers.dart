import 'package:shmr_finance/data/local/dto/models/common/modify.dart';
import 'package:shmr_finance/data/local/dto/models/export.dart';
import 'package:shmr_finance/data/local/dto/models/transaction/db_transaction.dart';
import 'package:shmr_finance/data/network/dto/requests/account_create_request/account_create_request.dart';
import 'package:shmr_finance/data/network/dto/requests/account_update_request/account_update_request.dart';
import 'package:shmr_finance/data/network/dto/requests/transaction_request/transaction_request.dart';
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

  DBAccount toLocal() => DBAccount(
        id: id,
        userId: null,
        name: name,
        balance: balance.toString(),
        currency: currency.code,
        createdAt: null,
        updatedAt: null,
        modification: Modification.updated,
      );
}

extension UpdateTransactionUseCaseRequestX on UpdateTransactionUseCaseRequest {
  ApiTransactionRequest toData() => ApiTransactionRequest(
      accountId: accountId,
      categoryId: categoryId,
      amount: amount.toString(),
      transactionDate: transactionDate.toUtc().toIso8601String().toString(),
      comment: comment);

  DBTransaction toLocal(Modification modification) => DBTransaction(
        id: id.toString(),
        accountId: accountId,
        categoryId: categoryId,
        amount: amount.toString(),
        transactionDate: transactionDate.toUtc().toIso8601String().toString(),
        comment: comment,
        createdAt: null,
        updatedAt: null,
        modification: modification,
      );
}

extension CreateTransactionUseCaseRequestX on CreateTransactionUseCaseRequest {
  ApiTransactionRequest toData() => ApiTransactionRequest(
      accountId: accountId,
      categoryId: categoryId,
      amount: amount.toString(),
      transactionDate: transactionDate.toUtc().toIso8601String().toString(),
      comment: comment);

  DBTransaction toLocal(int localId) => DBTransaction(
        id: localId.toString(),
        accountId: accountId,
        categoryId: categoryId,
        amount: amount.toString(),
        transactionDate: transactionDate.toUtc().toIso8601String().toString(),
        comment: comment,
        createdAt: null,
        updatedAt: null,
        modification: Modification.created,
      );
}
