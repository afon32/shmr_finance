import 'package:shmr_finance/data/local/abstract/local_repository.dart';
import 'package:shmr_finance/data/local/dao/category_dao.dart';
import 'package:shmr_finance/data/local/dto/models/common/modify.dart';

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
  // final EventDao eventDao;

  SembastRepository({
    required this.accountDao,
    required this.transactionDao,
    required this.categoryDao,
    // required this.eventDao,
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

  @override
  Future<DBAccount?> getAccountById(int id) async {
    final response = await accountDao.getById(accountId: id);
    return response;
  }

  @override
  Future<bool> setAccounts(List<DBAccount> list) async {
    final data = await accountDao.addAccounts(list);
    return data;
  }

  @override
  Future<DBAccount> updateAccount(int id, DBAccount request) async {
    final response = await accountDao.updateAccount(request);
    return response;
  }

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

  @override
  Future<bool> setCategories(List<DBCategory> list) async {
    final data = await categoryDao.addCategories(list);
    return data;
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

  Future<bool> updateTransaction(int id, DBTransaction request) async {
    final data = await transactionDao.updateTransaction(request);
    return data;
  }

  Future<bool> deleteTransaction(int id) async {
    final currentTransaction = await transactionDao.getById(transactionId: id);
    if (currentTransaction != null) {
      final isCreated = currentTransaction.modification == Modification.created;
      if (isCreated) {
        await transactionDao.delete(key: id.toString());
        return true;
      } else {
        final data = await transactionDao.updateTransaction(
            currentTransaction.copyWith(modification: Modification.deleted));
        return data;
      }
    } else {
      return false;
    }
  }

  @override
  Future<List<DBTransaction>> getTransactionByPeriod(
      int accountId, DateTime startDate, DateTime endDate) async {
    final data =
        await transactionDao.getByPeriod(start: startDate, end: endDate);
    final List<DBTransaction> withoutDeleted = [];
    for (DBTransaction e in data) {
      if (e.modification != Modification.deleted) {
        withoutDeleted.add(e);
      }
    }
    return withoutDeleted;
  }

  @override
  Future<bool> setTransactions(List<DBTransaction> list) async {
    final data = await transactionDao.addTransactions(list);
    return data;
  }

  @override
  Future<List<DBTransaction>> getAllTransactions() async {
    final data = await transactionDao.getAllTransactions();
    return data;
  }

  @override
  Future<void> dropAllTransactions() async {
    final data = await transactionDao.drop();
  }

  // @override
  // Future<List<DBEvent>> getEvents() async {
  //   final events = await eventDao.getAll();
  //   return events;
  // }

  // @override
  // Future<bool> setEvent(DBEvent event) async {
  //   final response = await eventDao.addEvent(event);
  //   return response;
  // }
}
