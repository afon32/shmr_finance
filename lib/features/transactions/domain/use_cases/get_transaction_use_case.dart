import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';

import '../entities/transaction_details.dart';
import '../repositories/transactions_repository.dart';

class DeleteTransactionUseCase implements BaseUseCase<TransactionDetails, int> {
  final TransactionsRepository _repository;

  DeleteTransactionUseCase({required TransactionsRepository repository})
      : _repository = repository;

  @override
  Future<TransactionDetails> execute(int id) =>
      _repository.getTransactionById(id);
}
