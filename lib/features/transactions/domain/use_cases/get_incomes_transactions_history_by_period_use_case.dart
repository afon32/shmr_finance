import '../../data/dto/get_transaction_by_period_use_case_request.dart';
import '../entities/transaction_details.dart';
import '../repositories/transactions_repository.dart';
import 'get_transactions_history_by_period_use_case.dart';

class GetIncomesTransactionsHistoryByPeriodUseCase implements GetTransactionsHistoryByPeriodUseCase {
  final TransactionsRepository _repository;

  GetIncomesTransactionsHistoryByPeriodUseCase({required TransactionsRepository repository})
      : _repository = repository;

  @override
  Future<List<TransactionDetails>> execute(GetTransactionByPeriodUseCaseRequest request) =>
      _repository.getIncomesTransactionHistoryByPeriod(request);
}
