import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';

import '../../data/dto/update_transaction_use_case_request.dart';
import '../entities/transaction_details.dart';
import '../repositories/transactions_repository.dart';

class UpdateTransactionUseCase
    implements
        BaseUseCase<TransactionDetails, UpdateTransactionUseCaseRequest> {
  final TransactionsRepository _repository;

  UpdateTransactionUseCase({required TransactionsRepository repository})
      : _repository = repository;

  @override
  Future<TransactionDetails> execute(UpdateTransactionUseCaseRequest request) =>
      _repository.updateTransaction(request);
}
