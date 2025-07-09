import 'dart:convert';

import 'package:shmr_finance/core/local_holders/account_id_state_holder.dart';
import 'package:shmr_finance/core/network_client/shmr_network_client.dart';
import 'package:shmr_finance/data/mocked_data.dart';
import 'package:shmr_finance/data/network/abstract/network_repository.dart';
import 'package:worker_manager/worker_manager.dart';

import '../dto/requests/export.dart';
import '../dto/responses/export.dart';
import 'api_routes/api_routes.dart';

class NetworkServiceImpl implements NetworkRepository {
  final AccountStateHolder _accountStateHolder;
  final ShmrNetworkClient _networkClient;

  NetworkServiceImpl(this._networkClient, this._accountStateHolder);

  // Account
  @override
  Future<List<ApiAccount>> getAllAccounts(String token) async {
    final response =
        await _networkClient.dio.get(ApiRoutes.getAllAccounts.routeName);
    final data = await workerManager.execute(() {
      final list = response.data as List<dynamic>;
      return list
          .map((e) => ApiAccount.fromJson(e as Map<String, dynamic>))
          .toList();
    }).future;
    print(data);
    return data;
    // return Future.value(MockedData.getAllAccountsMock);
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

  Future<List<ApiCategory>> getAllCategories() async {
    final response =
        await _networkClient.dio.get(ApiRoutes.getAllCategories.routeName);

    final data = await workerManager.execute(() {
      final list = response.data as List<dynamic>;
      return list
          .map((e) => ApiCategory.fromJson(e as Map<String, dynamic>))
          .toList();
    }).future;
    print(data);
    return data;
    // return Future.value(MockedData.getAllCategoriesMock);
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
      int id, ApiTransactionRequest request) async {
    final response = await _networkClient.dio.put(
        ApiRoutes.updateTransaction.routeNameWithPathParameters([id]),
        data: request.toJson());
    return response.data as ApiTransactionResponse;
  }

  Future<bool> deleteTransaction(int id) {
    return Future.value(MockedData.deleteTransactionMock);
  }

  Future<List<ApiTransactionResponse>> getTransactionByPeriod(
      int accountId, String? startDate, String? endDate) async {
    final response = await _networkClient.dio.get(
        ApiRoutes.getTransactionByPeriod
            .routeNameWithPathParameters([_accountStateHolder.state]),
        queryParameters: (startDate != null && endDate != null)
            ? {
                'startDate': startDate,
                'endDate': endDate,
              }
            : null);
    final data = await workerManager.execute(() {
      final list = response.data as List<dynamic>;
      return list
          .map(
              (e) => ApiTransactionResponse.fromJson(e as Map<String, dynamic>))
          .toList();
    }).future;
    return data;
    // return Future.value(MockedData.getTransactionByPeriodMock);
  }
}
