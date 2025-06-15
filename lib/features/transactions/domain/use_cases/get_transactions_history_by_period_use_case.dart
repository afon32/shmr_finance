import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';

import '../../data/dto/get_transaction_by_period_use_case_request.dart';
import '../entities/transaction_details.dart';
import '../repositories/transactions_repository.dart';

class GetTransactionsHistoryByPeriodUseCase implements BaseUseCase<List<TransactionDetails>, GetTransactionByPeriodUseCaseRequest> {
  final TransactionsRepository _repository;

  GetTransactionsHistoryByPeriodUseCase({required TransactionsRepository repository})
      : _repository = repository;

  @override
  Future<List<TransactionDetails>> execute(GetTransactionByPeriodUseCaseRequest request) =>
      _repository.getTransactionHistoryByPeriod(request);
}
