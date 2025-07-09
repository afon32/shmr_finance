import 'package:dio/dio.dart';

class OnSuccessInterceptor extends Interceptor {
  OnSuccessInterceptor();

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);

    final methodPath = response.requestOptions.path;

  }
}
