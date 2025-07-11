import '../dto/requests/export.dart';
import '../dto/responses/export.dart';

abstract class NetworkRepository {
  // Account
  Future<List<ApiAccount>> getAllAccounts();

  Future<ApiAccount> createNewAccount(ApiAccountCreateRequest request);

  Future<ApiAccountResponse> getAccountById(int id);

  Future<ApiAccount> updateAccount(int id, ApiAccountUpdateRequest request);

  Future<ApiAccountHistoryResponse> getAccountHistory(int id);

  // Categories

  Future<List<ApiCategory>> getAllCategories();

  Future<List<ApiCategory>> getCategoryByType(bool isIncome);

  // Transactions

  Future<ApiTransaction> createNewTransaction(ApiTransactionRequest request);

  Future<ApiTransactionResponse> getTransactionById(int id);

  Future<ApiTransactionResponse> updateTransaction(int id, ApiTransactionRequest request);

  Future<bool> deleteTransaction(int id);

  Future<List<ApiTransactionResponse>> getTransactionByPeriod(int accountId, String? startDate, String? endDate);

  // Future<bool> dirtyPost();
}
