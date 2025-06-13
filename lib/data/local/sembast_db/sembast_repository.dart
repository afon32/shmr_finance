import 'package:shmr_finance/data/local/abstract/local_repository.dart';

import '../../dto/requests/export.dart';
import '../../dto/responses/export.dart';
import '../../mocked_data.dart';

/// Репозиторий для локальной БДшки 
/// Пока скопировал методы из network сервиса. Потом, наверное, придётся модифицировать
/// to be implemented...
class SembastService implements LocalService {
  
  @override
  void compareData() {
    // TODO: implement compareData
  }

   // Account
  Future<ApiAccount> getAllAccounts(String token) {
    return Future.value(MockedData.getAllAccountsMock);
  }

  Future<bool> createNewAccount(ApiAccountCreateRequest request) {
    return Future.value(MockedData.createNewAccountMock);
  }

  Future<ApiAccountResponse> getAccountById(int id) {
    return Future.value(MockedData.getAccountByIdMock);
  }

  Future<ApiAccount> updateAccount(int id, ApiAccountUpdateRequest request) {
    return Future.value(MockedData.updateAccountMock);
  }

  Future<ApiAccountHistoryResponse> getAccountHistory(int id) {
    return Future.value(MockedData.getAccountHistoryMock);
  }

  // Categories

  Future<List<ApiCategory>> getAllCategories() {
    return Future.value(MockedData.getAllCategoriesMock);
  }

  Future<List<ApiCategory>> getCategoryByType(bool isIncome) {
    return Future.value(MockedData.getCategoriesByTypeMock);
  }

  // Transactions

  Future<ApiTransaction> createNewTransaction(ApiTransactionRequest request) {
    return Future.value(MockedData.createNewTransactionMock);
  }

  Future<ApiTransactionResponse> getTransactionById(int id) {
    return Future.value(MockedData.getTransactionByIdMock);
  }

  Future<ApiTransactionResponse> updateTransaction(
      int id, ApiTransactionRequest request) {
    return Future.value(MockedData.updateTransactionMock);
  }

  Future<bool> deleteTransaction(int id) {
    return Future.value(MockedData.deleteTransactionMock);
  }

  Future<List<ApiTransactionResponse>> getTransactionByPeriod(
      int accountId, String startDate, String endDate) {
    return Future.value(MockedData.getTransactionByPeriodMock);
  }

}
