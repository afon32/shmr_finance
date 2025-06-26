import 'package:shmr_finance/features/account/domain/entities/account.dart';
import 'package:shmr_finance/features/account/domain/entities/account_history.dart';
import 'package:shmr_finance/service/api/api_util.dart';

import '../domain/repositories/account_repository.dart';
import 'dto/export.dart';

class AccountRepositoryImpl implements AccountRepository {
  final ApiUtil _apiUtil;

  AccountRepositoryImpl({required ApiUtil apiUtil}) : _apiUtil = apiUtil;

  @override
  Future<Account> createAccount(CreateAccountUseCaseRequest request) {
    _apiUtil.createNewAccount(request);
    throw UnimplementedError();
  }

  @override
  Future<Account> getAccountById(int id) async {
    final result = await _apiUtil.getAccountById(id);
    final account = Account(
        id: result.id,
        userId: result.id,
        name: result.name,
        balance: result.balance,
        currency: result.currency,
        createdAt: result.createdAt,
        updatedAt: result.updatedAt);
    return account;
  }

  @override
  Future<List<Account>> getAllAccounts() async {
    final result = await _apiUtil.getAllAccounts();
    return result;
  }

  @override
  Future<Account> updateAccount(UpdateAccountUseCaseRequest request) async {
    final result = await _apiUtil.updateAccount(request);
    return result;
  }

  @override
  Future<AccountHistory> getAccountHistory(int id) {
    _apiUtil.getAccountHistory(id);
    throw UnimplementedError();
  }
}
