import '../dto/models/export.dart';

/// Репозиторий для локальной БДшки
abstract class LocalRepository {
  void compareData();
  // Account
  Future<List<DBAccount>> getAllAccounts();

  // Future<bool> createNewAccount(ApiAccountCreateRequest request);

  // Future<ApiAccountResponse> getAccountById(int id);

  // Future<ApiAccount> updateAccount(int id, ApiAccountUpdateRequest request);

  // Future<ApiAccountHistoryResponse> getAccountHistory(int id);

  // // Categories

  // Future<List<ApiCategory>> getAllCategories();

  // Future<List<ApiCategory>> getCategoryByType(bool isIncome);

  // // Transactions

  Future<bool> createNewTransaction(DBTransaction request);

  Future<DBTransaction?> getTransactionById(int id);

  // Future<ApiTransactionResponse> updateTransaction(
  //     int id, ApiTransactionRequest request);

  // Future<bool> deleteTransaction(int id);

  // Future<List<ApiTransactionResponse>> getTransactionByPeriod(
  // int accountId, String startDate, String endDate);
}
