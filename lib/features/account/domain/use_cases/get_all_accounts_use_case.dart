import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';

import '../entities/account.dart';
import '../repositories/account_repository.dart';

class GetAllAccountsUseCase
    implements BaseUseCase<List<Account>, EmptyUseCaseRequest> {
  final AccountRepository _repository;

  GetAllAccountsUseCase({required AccountRepository repository})
      : _repository = repository;

  @override
  Future<List<Account>> execute(EmptyUseCaseRequest request) =>
      _repository.getAllAccounts();
}
