import 'package:dio/dio.dart';
import 'package:shmr_finance/core/local_holders/secret_state_holder.dart';

import 'interceptors/retry_on_server_error_interceptor.dart';

class ShmrNetworkClient {
  final SecretStateHolder _secretStateHolder;
  late final Dio dio;

  ShmrNetworkClient(this._secretStateHolder) {
    _init();
  }

  void _init() {
    final apiKey = _secretStateHolder.state.apiKey;
    final apiUrl = _secretStateHolder.state.apiUrl;
    dio = Dio(BaseOptions(
      baseUrl: apiUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
    ));

    dio.interceptors.add(RetryOnServerErrorInterceptor(dio));
  }
}
