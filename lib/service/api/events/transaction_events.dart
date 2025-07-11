import 'package:shmr_finance/core/base/event_abstract/base_event.dart';
import 'package:shmr_finance/data/network/dto/requests/export.dart';
import 'package:shmr_finance/features/transactions/data/dto/create_transaction_use_case_request.dart';

class CreateTransactionEvent implements BaseEvent {
  final CreateTransactionUseCaseRequest request;

  CreateTransactionEvent({required this.request});
}
