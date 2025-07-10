import 'dart:async';

import 'package:intl/intl.dart';
import 'package:shmr_finance/core/base/event_abstract/base_event.dart';
import 'package:shmr_finance/core/connection_listener/connection_listener_cubit.dart';
import 'package:shmr_finance/data/local/abstract/local_repository.dart';
import 'package:shmr_finance/data/local/dao/account_dao.dart';
import 'package:shmr_finance/service/api/mappers/api/api_account_history_response_mapper.dart';
import 'package:shmr_finance/service/api/mappers/api/api_account_mapper.dart';
import 'package:shmr_finance/service/api/mappers/api/api_account_response_mapper.dart';
import 'package:shmr_finance/service/api/mappers/api/api_category_mapper.dart';
import 'package:shmr_finance/service/api/mappers/api/api_transaction_response_mapper.dart';
import 'package:shmr_finance/service/api/mappers/api/api_transactions_mapper.dart';
import 'package:shmr_finance/data/network/abstract/network_repository.dart';
import 'package:shmr_finance/features/account/data/dto/export.dart';
import 'package:shmr_finance/features/account/domain/entities/account.dart';
import 'package:shmr_finance/features/account/domain/entities/account_details.dart';
import 'package:shmr_finance/features/account/domain/entities/account_history.dart';
import 'package:shmr_finance/features/transactions/data/dto/create_transaction_use_case_request.dart';
import 'package:shmr_finance/features/transactions/data/dto/get_transaction_by_period_use_case_request.dart';
import 'package:shmr_finance/features/transactions/data/dto/update_transaction_use_case_request.dart';
import 'package:shmr_finance/features/transactions/domain/entities/transaction.dart';
import 'package:shmr_finance/features/transactions/domain/entities/transaction_details.dart';
import 'package:shmr_finance/model/category.dart';
import 'package:shmr_finance/service/api/mappers/local/db_account_mapper.dart';
import 'package:shmr_finance/service/api/mappers/use_cases/use_case_to_data_mappers.dart';

import 'events/export.dart';

/// Класс-прослойка между фичами и слоем данных. Будет принимать на вход методов
/// понятные для домена значения, чтобы отправить их в сервис уже смаппленными в дто (и наоборот).
/// Так же будет определять откуда брать данные из БД или с бэка и, при необходимости синхронизировать.
class ApiUtil {
  final ConnectionStatusStateHolder _connectionStatusStateHolder;
  final NetworkRepository _networkService;
  final LocalRepository _localService;

  final StreamController<BaseEvent> eventsStreamController = StreamController();

  ApiUtil({
    required ConnectionStatusStateHolder connectionStatusStateHolder,
    required NetworkRepository networkService,
    required LocalRepository localService,
  })  : _connectionStatusStateHolder = connectionStatusStateHolder,
        _networkService = networkService,
        _localService = localService {
    _startListen();
  }

  void _startListen() {
    eventsStreamController.stream.listen((event) {
      switch (event.runtimeType) {
        case CreateTransactionEvent e:
          createNewTransaction2(e);
      }
    });
  }

  Future<dynamic> godMethod() {
    return Future.value(true);
  }

  // Account
  Future<List<Account>> getAllAccounts() async {
    if (_connectionStatusStateHolder.state is Connected) {
    } else {
      final list = await _localService.getAllAccounts();
      final result = list.map((e) => e.toDomain()).toList();
    }
    final list = await _networkService.getAllAccounts();
    final result = list.map((e) => e.toDomain()).toList();
    return result;
  }

  Future<bool> createNewAccount(CreateAccountUseCaseRequest request) async {
    final result = await _networkService.createNewAccount(request.toData());
    return true;
  }

  Future<AccountDetails> getAccountById(int id) async {
    final result = await _networkService.getAccountById(id);
    return result.toDomain();
  }

  Future<Account> updateAccount(UpdateAccountUseCaseRequest request) async {
    final result =
        await _networkService.updateAccount(request.id, request.toData());
    return result.toDomain();
  }

  Future<AccountHistory> getAccountHistory(int id) async {
    final result = await _networkService.getAccountHistory(id);
    return result.toDomain();
  }

  // Categories

  Future<List<Category>> getAllCategories() async {
    final list = await _networkService.getAllCategories();
    final result = list.map((e) => e.toDomain()).toList();
    return result;
  }

  Future<List<Category>> getCategoryByType(bool isIncome) async {
    final list = await _networkService.getCategoryByType(isIncome);
    final result = list.map((e) => e.toDomain()).toList();
    return result;
  }

  // Transactions

  Future<Transaction> createNewTransaction(
      CreateTransactionUseCaseRequest request) async {
    final result = await _networkService.createNewTransaction(request.toData());
    return result.toDomain();
  }

  Future<Transaction> createNewTransaction2(
      CreateTransactionEvent event) async {
    final result =
        await _networkService.createNewTransaction(event.request.toData());
    return result.toDomain();
  }

  Future<TransactionDetails> getTransactionById(int id) async {
    final result = await _networkService.getTransactionById(id);
    return result.toDomain();
  }

  Future<TransactionDetails> updateTransaction(
      UpdateTransactionUseCaseRequest request) async {
    final result =
        await _networkService.updateTransaction(request.id, request.toData());
    return result.toDomain();
  }

  Future<bool> deleteTransaction(int id) async {
    final result = await _networkService.deleteTransaction(id);
    return result;
  }

  Future<List<TransactionDetails>> getTransactionByPeriod(
      GetTransactionByPeriodUseCaseRequest request) async {
    final list = await _networkService.getTransactionByPeriod(
      request.accountId,
      request.startDate != null
          ? DateFormat('yyyy-MM-dd').format(request.startDate!)
          : null,
      request.endDate != null
          ? DateFormat('yyyy-MM-dd').format(request.endDate!)
          : null,
    );
    final result = list.map((e) => e.toDomain()).toList();
    return result;
  }
}
