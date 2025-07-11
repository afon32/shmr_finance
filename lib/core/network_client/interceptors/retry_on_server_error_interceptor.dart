import 'package:dio/dio.dart';

class RetryOnServerErrorInterceptor extends Interceptor {
  final Dio dio;
  final List<int> retryStatusCodes = [500, 502, 503, 504, 408, 429];
  final int maxAttempts = 5;
  final int initialDelayMillis = 1000;

  RetryOnServerErrorInterceptor(this.dio);

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    print(err.message);
    var attempt = err.requestOptions.extra['retry_attempt'] ?? 0;
    if (retryStatusCodes.contains(err.response?.statusCode) &&
        attempt < maxAttempts) {
      final delay = initialDelayMillis * (1 << attempt);
      await Future.delayed(Duration(milliseconds: delay));
      final options = err.requestOptions;
      options.extra['retry_attempt'] = attempt + 1; //1s , 2s и т.д.
      try {
        final response = await dio.fetch(options);
        return handler.resolve(response);
      } catch (e) {
        return super.onError(e as DioException, handler);
      }
    }
    return super.onError(err, handler);
  }
}
