import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';

import '../repositories/transactions_repository.dart';

class DeleteTransactionUseCase implements BaseUseCase<bool, int> {
  final TransactionsRepository _repository;

  DeleteTransactionUseCase({required TransactionsRepository repository})
      : _repository = repository;

  @override
  Future<bool> execute(int id) => _repository.deleteTransaction(id);
}
