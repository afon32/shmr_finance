import 'package:shmr_finance/data/local/abstract/local_repository.dart';
import 'package:shmr_finance/data/local/dao/category_dao.dart';

import '../../mocked_data.dart';
import '../dao/export.dart';
import '../dto/models/export.dart';

/// Репозиторий для локальной БДшки
/// Пока скопировал методы из network сервиса. Потом, наверное, придётся модифицировать
/// to be implemented...
class SembastRepository implements LocalRepository {
  final AccountDao accountDao;
  final TransactionDao transactionDao;
  final CategoryDao categoryDao;

  SembastRepository({
    required this.accountDao,
    required this.transactionDao,
    required this.categoryDao,
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

  Future<DBAccount?> getAccountById(int id) async {
    final response = await accountDao.getById(accountId: id);
    return response;
  }

  // Future<ApiAccount> updateAccount(int id, ApiAccountUpdateRequest request) {
  //   return Future.value(MockedData.updateAccountMock);
  // }

  // Future<ApiAccountHistoryResponse> getAccountHistory(int id) {
  //   return Future.value(MockedData.getAccountHistoryMock);
  // }

  // // Categories

  @override
  Future<DBCategory?> getCategoryById(int id) async {
    final response = await categoryDao.getById(categoryId: id);
    return response;
  }

  Future<List<DBCategory>> getAllCategories() async {
    final response = await categoryDao.getAll();
    return response;
  }

  Future<List<DBCategory>> getCategoryByType(bool isIncome) async {
    final responseAll = await categoryDao.getAll();
    final List<DBCategory> result = [];
    for (DBCategory category in responseAll) {
      if (category.isIncome == isIncome) {
        result.add(category);
      }
    }
    return result;
  }

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

  @override
  Future<List<DBTransaction>> getTransactionByPeriod(
      int accountId, DateTime startDate, DateTime endDate) async {
    final data =
        await transactionDao.getByPeriod(start: startDate, end: endDate);
    return data;
  }

  @override
  Future<bool> setTransactions(List<DBTransaction> list) async {
    final data = await transactionDao.addTransactions(list);
    return data;
  }
}
