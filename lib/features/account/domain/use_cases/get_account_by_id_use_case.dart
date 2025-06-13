import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';

import '../entities/account.dart';
import '../repositories/account_repository.dart';

class GetAccountByIdUseCase
    implements BaseUseCase<Account, int> {
  final AccountRepository _repository;

  GetAccountByIdUseCase({required AccountRepository repository})
      : _repository = repository;

  @override
  Future<Account> execute(int id) =>
      _repository.getAccountById(id);
}
