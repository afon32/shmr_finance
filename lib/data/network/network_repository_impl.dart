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
  }

  Future<ApiAccount> createNewAccount(ApiAccountCreateRequest request) async {
    final response = await _networkClient.dio
        .post(ApiRoutes.createNewAccount.routeName, data: request.toJson());
    final data = await workerManager.execute(() {
      return ApiAccount.fromJson(response.data);
    });
    return data;
  }

  Future<ApiAccountResponse> getAccountById(int id) async {
    final response = await _networkClient.dio.get(ApiRoutes.getAccountById
        .routeNameWithPathParameters([_accountStateHolder.state]));
    final data = await workerManager.execute(() {
      return ApiAccountResponse.fromJson(response.data);
    });
    return data;
  }

  Future<ApiAccount> updateAccount(
      int id, ApiAccountUpdateRequest request) async {
    final response = await _networkClient.dio.put(
        ApiRoutes.updateAccount.routeNameWithPathParameters([id]),
        data: request.toJson());
    final data = await workerManager.execute(() {
      return ApiAccount.fromJson(response.data);
    });
    return data;
  }

  Future<ApiAccountHistoryResponse> getAccountHistory(int id) async {
    final response = await _networkClient.dio.get(ApiRoutes.getAccountHistory
        .routeNameWithPathParameters([_accountStateHolder.state]));
    final data = await workerManager.execute(() {
      return ApiAccountHistoryResponse.fromJson(response.data);
    });
    return data;
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
    return data;
  }

  Future<List<ApiCategory>> getCategoryByType(bool isIncome) async {
    final response = await _networkClient.dio.get(
        ApiRoutes.getCategoriesByType.routeNameWithPathParameters([isIncome]));
    final data = await workerManager.execute(() {
      final list = response.data as List<dynamic>;
      return list
          .map((e) => ApiCategory.fromJson(e as Map<String, dynamic>))
          .toList();
    }).future;
    return data;
  }

  // Transactions

  Future<ApiTransaction> createNewTransaction(
      ApiTransactionRequest request) async {
    final response = await _networkClient.dio
        .post(ApiRoutes.createTransaction.routeName, data: request.toJson());
    final data = await workerManager.execute(() {
      return ApiTransaction.fromJson(response.data);
    });
    return data;
  }

  Future<ApiTransactionResponse> getTransactionById(int id) async {
    final response = await _networkClient.dio.get(ApiRoutes.getTransactionById
        .routeNameWithPathParameters([_accountStateHolder.state]));
    final data = await workerManager.execute(() {
      return ApiTransactionResponse.fromJson(response.data);
    });
    return data;
  }

  Future<ApiTransactionResponse> updateTransaction(
      int id, ApiTransactionRequest request) async {
    final response = await _networkClient.dio.put(
        ApiRoutes.updateTransaction.routeNameWithPathParameters([id]),
        data: request.toJson());
    final data = await workerManager.execute(() {
      return ApiTransactionResponse.fromJson(response.data);
    });
    return data;
  }

  Future<bool> deleteTransaction(int id) async {
    final response = await _networkClient.dio.delete(
      ApiRoutes.deleteTransaction.routeNameWithPathParameters([id]),
    );
    final data = response.statusCode == 204;
    return data;
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
  }
}
