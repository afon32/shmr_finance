import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';

import '../../data/dto/create_account_use_case_request.dart';
import '../entities/account.dart';
import '../repositories/account_repository.dart';

class CreateAccountUseCase
    implements BaseUseCase<Account, CreateAccountUseCaseRequest> {
  final AccountRepository _repository;

  CreateAccountUseCase({required AccountRepository repository})
      : _repository = repository;

  @override
  Future<Account> execute(CreateAccountUseCaseRequest request) =>
      _repository.createAccount(request);
}
