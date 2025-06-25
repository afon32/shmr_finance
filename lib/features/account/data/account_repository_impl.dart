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
  Future<Account> getAccountById(int id) {
    _apiUtil.getAccountById(id);
    throw UnimplementedError();
  }

  @override
  Future<List<Account>> getAllAccounts() async {
    final result = await _apiUtil.getAllAccounts();
    return result;
  }

  @override
  Future<Account> updateAccount(UpdateAccountUseCaseRequest request) {
    _apiUtil.updateAccount(request);
    throw UnimplementedError();
  }

  @override
  Future<AccountHistory> getAccountHistory(int id) {
    _apiUtil.getAccountHistory(id);
    throw UnimplementedError();
  }
}
