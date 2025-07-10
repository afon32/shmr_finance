import 'package:shmr_finance/core/base/event_abstract/base_event.dart';
import 'package:shmr_finance/data/network/dto/requests/export.dart';

class CreateAccountEvent implements BaseEvent {
  final ApiAccountCreateRequest networkRequest;

  CreateAccountEvent({required this.networkRequest});
}
