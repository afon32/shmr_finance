import 'dart:async';

import 'package:intl/intl.dart';
import 'package:shmr_finance/core/base/event_abstract/base_event.dart';
import 'package:shmr_finance/core/connection_listener/connection_listener_cubit.dart';
import 'package:shmr_finance/core/local_holders/cold_boot_holder.dart';
import 'package:shmr_finance/core/local_holders/local_transaction_id_holder.dart';
import 'package:shmr_finance/data/local/abstract/local_repository.dart';
import 'package:shmr_finance/data/local/dao/account_dao.dart';
import 'package:shmr_finance/data/local/dto/models/export.dart';
import 'package:shmr_finance/data/network/dto/responses/export.dart';
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
import 'package:shmr_finance/service/api/mappers/domain/account_mapper.dart';
import 'package:shmr_finance/service/api/mappers/domain/category_mapper.dart';
import 'package:shmr_finance/service/api/mappers/local/db_account_mapper.dart';
import 'package:shmr_finance/service/api/mappers/local/db_category_mapper.dart';
import 'package:shmr_finance/service/api/mappers/local/db_transaction_mapper.dart';
import 'package:shmr_finance/service/api/mappers/use_cases/use_case_to_data_mappers.dart';
import 'package:yx_scope/yx_scope.dart';

import 'events/export.dart';

/// Класс-прослойка между фичами и слоем данных. Будет принимать на вход методов
/// понятные для домена значения, чтобы отправить их в сервис уже смаппленными в дто (и наоборот).
/// Так же будет определять откуда брать данные из БД или с бэка и, при необходимости синхронизировать.
class ApiUtil implements AsyncLifecycle {
  final ConnectionStatusStateHolder _connectionStatusStateHolder;
  final NetworkRepository _networkService;
  final LocalRepository _localService;
  final ColdBootStateHolder _coldBootStateHolder;
  final LocalTransactionIdHolder _localTransactionIdHolder;
  final StreamController<BaseEvent> eventsStreamController = StreamController();

  ApiUtil({
    required ConnectionStatusStateHolder connectionStatusStateHolder,
    required NetworkRepository networkService,
    required LocalRepository localService,
    required ColdBootStateHolder coldBootStateHolder,
    required LocalTransactionIdHolder localTransactionIdHolder,
  })  : _connectionStatusStateHolder = connectionStatusStateHolder,
        _networkService = networkService,
        _localService = localService,
        _coldBootStateHolder = coldBootStateHolder,
        _localTransactionIdHolder = localTransactionIdHolder {
    _startListen();
  }

  @override
  Future<void> dispose() {
    // TODO: implement dispose
    throw UnimplementedError();
  }

  @override
  Future<void> init() async {
    if (_coldBootStateHolder.state) {
      final categories = await getAllCategories();
      final accounts = await getAllAccounts();
      if (categories.isNotEmpty && accounts.isNotEmpty) {
        final categoriesIsCached = await storeAllCategories(categories);
        final accountsIsCached = await storeAllAccounts(accounts);
        await getTransactionByPeriod(
            GetTransactionByPeriodUseCaseRequest(
                accountId: accounts.first.id,
                startDate: DateTime.now().subtract(Duration(days: 60)),
                endDate: DateTime.now()),
            true);
        if (categoriesIsCached && accountsIsCached) {
          _coldBootStateHolder.setNot();
        }
      }
    }
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
      final list = await _networkService.getAllAccounts();
      final result = list.map((e) => e.toDomain()).toList();
      return result;
    } else {
      final list = await _localService.getAllAccounts();
      final result = list.map((e) => e.toDomain()).toList();
      return result;
    }
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

  Future<bool> storeAllAccounts(List<Account> list) async {
    final localTransfer = list.map((e) => e.toLocal()).toList();
    final response = await _localService.setAccounts(localTransfer);
    return response;
  }
  // Categories

  Future<List<Category>> getAllCategories() async {
    if (_connectionStatusStateHolder.state is Connected) {
      final list = await _networkService.getAllCategories();

      final result = list.map((e) => e.toDomain()).toList();

      // final localTransfer = list.map((e) => e.toLocal()).toList();

      // final isCached = await _localService.setCategories(localTransfer);

      return result;
    } else {
      final list = await _localService.getAllCategories();
      final result = list.map((e) => e.toDomain()).toList();
      return result;
    }
  }

  Future<bool> storeAllCategories(List<Category> list) async {
    final localTransfer = list.map((e) => e.toLocal()).toList();
    final response = await _localService.setCategories(localTransfer);
    return response;
  }

  Future<List<Category>> getCategoryByType(bool isIncome) async {
    if (_connectionStatusStateHolder.state is Connected) {
      final list = await _networkService.getCategoryByType(isIncome);

      final result = list.map((e) => e.toDomain()).toList();

      // final localTransfer = list.map((e) => e.toLocal()).toList();

      // final isCached = await _localService.setCategories(localTransfer);

      return result;
    } else {
      final list = await _localService.getCategoryByType(isIncome);
      final result = list.map((e) => e.toDomain()).toList();
      return result;
    }
  }

  // Transactions

  Future<Transaction?> createNewTransaction(
      CreateTransactionUseCaseRequest request) async {
    if (_connectionStatusStateHolder.state is Connected) {
      final response =
          await _networkService.createNewTransaction(request.toData());
      final result = response.toDomain();
      return result;
    } else {
      final response = await _localService.createNewTransaction(
          request.toLocal(_localTransactionIdHolder.newT()));
    }
    return null;
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

  Future<bool> updateTransaction(
      UpdateTransactionUseCaseRequest request) async {
    if (_connectionStatusStateHolder.state is Connected) {
      final response =
          await _networkService.updateTransaction(request.id, request.toData());
      // final result = response.toDomain();
      return true;
    } else {
      final response =
          await _localService.updateTransaction(request.id, request.toLocal());
      // final result = response.toDomain();
      return response;
    }
  }

  Future<bool> deleteTransaction(int id) async {
    final result = await _networkService.deleteTransaction(id);
    return result;
  }

  Future<List<TransactionDetails>> getTransactionByPeriod(
      GetTransactionByPeriodUseCaseRequest request,
      [bool needCache = false]) async {
    if (_connectionStatusStateHolder.state is Connected) {
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
      if (needCache) {
        final localTransfer = list.map((e) => e.toLocal()).toList();
        _localTransactionIdHolder.restore(localTransfer.length);
        final isCached = await _localService.setTransactions(localTransfer);
      }
      return result;
    } else {
      final list = await _localService.getTransactionByPeriod(request.accountId,
          request.startDate!, request.endDate!); // TODO: убрать bang!!!!!
      final result = await Future.wait(
        list.map(
          (e) async {
            final localAccount =
                await _localService.getAccountById(e.accountId);
            final localCategory =
                await _localService.getCategoryById(e.categoryId);
            final domain = e.toDomain(localAccount, localCategory);
            return domain;
          },
        ),
      );
      return result;
    }
  }
}
