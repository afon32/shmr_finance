import 'package:shmr_finance/data/local/abstract/local_repository.dart';

import '../../mocked_data.dart';
import '../dao/export.dart';
import '../dto/requests/export.dart';
import '../dto/responses/export.dart';

/// Репозиторий для локальной БДшки
/// Пока скопировал методы из network сервиса. Потом, наверное, придётся модифицировать
/// to be implemented...
class SembastRepository implements LocalRepository {
  final AccountDao accountDao;
  final TransactionDao transactionDao;

  SembastRepository({
    required this.accountDao,
    required this.transactionDao,
  });

  @override
  void compareData() {
    // TODO: implement compareData
  }

  // Account
  @override
  Future<List<DBAccount>> getAllAccounts() async {
    final response = await accountDao.getAllAccounts();
    return response;
  }

  // Future<bool> createNewAccount(ApiAccountCreateRequest request) {
  //   return Future.value(MockedData.createNewAccountMock);
  // }

  // Future<ApiAccountResponse> getAccountById(int id) {
  //   return Future.value(MockedData.getAccountByIdMock);
  // }

  // Future<ApiAccount> updateAccount(int id, ApiAccountUpdateRequest request) {
  //   return Future.value(MockedData.updateAccountMock);
  // }

  // Future<ApiAccountHistoryResponse> getAccountHistory(int id) {
  //   return Future.value(MockedData.getAccountHistoryMock);
  // }

  // // Categories

  // Future<List<ApiCategory>> getAllCategories() {
  //   return Future.value(MockedData.getAllCategoriesMock);
  // }

  // Future<List<ApiCategory>> getCategoryByType(bool isIncome) {
  //   return Future.value(MockedData.getCategoriesByTypeMock);
  // }

  // // Transactions

  @override
  Future<bool> createNewTransaction(DBTransaction request) async {
    try {
      await transactionDao.add(request);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<DBTransaction?> getTransactionById(int id) async {
    final data = await transactionDao.getById(transactionId: id);
    return data;
  }

  // Future<ApiTransactionResponse> updateTransaction(
  //     int id, ApiTransactionRequest request) {
  //   return Future.value(MockedData.updateTransactionMock);
  // }

  // Future<bool> deleteTransaction(int id) {
  //   return Future.value(MockedData.deleteTransactionMock);
  // }

  // Future<List<ApiTransactionResponse>> getTransactionByPeriod(
  //     int accountId, String startDate, String endDate) {
  //   return Future.value(MockedData.getTransactionByPeriodMock);
  // }
}
