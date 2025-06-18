import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';

import '../../data/dto/get_transaction_by_period_use_case_request.dart';
import '../entities/transaction_details.dart';

abstract class GetTransactionsHistoryByPeriodUseCase implements BaseUseCase<List<TransactionDetails>, GetTransactionByPeriodUseCaseRequest> {

  GetTransactionsHistoryByPeriodUseCase();

  @override
  Future<List<TransactionDetails>> execute(GetTransactionByPeriodUseCaseRequest request);
}