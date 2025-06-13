import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';

import '../../data/dto/update_account_use_case_request.dart';
import '../entities/account.dart';
import '../repositories/account_repository.dart';

class UpdateAccountUseCase
    implements BaseUseCase<Account, UpdateAccountUseCaseRequest> {
  final AccountRepository _repository;

  UpdateAccountUseCase({required AccountRepository repository})
      : _repository = repository;

  @override
  Future<Account> execute(UpdateAccountUseCaseRequest request) =>
      _repository.updateAccount(request);
}
