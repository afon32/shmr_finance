import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';

import '../../data/dto/create_transaction_use_case_request.dart';
import '../entities/transaction.dart';
import '../repositories/transactions_repository.dart';

class CreateTransactionUseCase
    implements BaseUseCase<Transaction, CreateTransactionUseCaseRequest> {
  final TransactionsRepository _repository;

  CreateTransactionUseCase({required TransactionsRepository repository})
      : _repository = repository;

  @override
  Future<Transaction> execute(CreateTransactionUseCaseRequest request) =>
      _repository.createTransaction(request);
}
