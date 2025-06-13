export 'common_requests/empty_request.dart';

abstract class BaseUseCase<Result, Params> {
  Future<Result> execute(Params params);
}
