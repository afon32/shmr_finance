import '../dto/models/export.dart';

/// Репозиторий для локальной БДшки
abstract class LocalRepository {
  void compareData();
  // Account
  Future<List<DBAccount>> getAllAccounts();

  // Future<bool> createNewAccount(ApiAccountCreateRequest request);

  Future<DBAccount?> getAccountById(int id);

  // Future<ApiAccount> updateAccount(int id, ApiAccountUpdateRequest request);

  // Future<ApiAccountHistoryResponse> getAccountHistory(int id);

  // // Categories

  Future<DBCategory?> getCategoryById(int id);

  Future<List<DBCategory>> getAllCategories();

  Future<List<DBCategory>> getCategoryByType(bool isIncome);

  // // Transactions

  Future<bool> createNewTransaction(DBTransaction request);

  Future<DBTransaction?> getTransactionById(int id);

  // Future<ApiTransactionResponse> updateTransaction(
  //     int id, ApiTransactionRequest request);

  // Future<bool> deleteTransaction(int id);

  Future<List<DBTransaction>> getTransactionByPeriod(
      int accountId, DateTime startDate, DateTime endDate);

  Future<bool> setTransactions(List<DBTransaction> list);
}
