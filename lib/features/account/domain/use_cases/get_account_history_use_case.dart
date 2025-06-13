import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';

import '../entities/account_history.dart';
import '../repositories/account_repository.dart';

class GetAccountHistoryUseCase implements BaseUseCase<AccountHistory, int> {
  final AccountRepository _repository;

  GetAccountHistoryUseCase({required AccountRepository repository})
      : _repository = repository;

  @override
  Future<AccountHistory> execute(int id) => _repository.getAccountHistory(id);
}
