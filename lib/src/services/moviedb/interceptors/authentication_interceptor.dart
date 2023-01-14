// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:dio/dio.dart';

class AuthenticationInterceptor extends Interceptor {
  AuthenticationInterceptor(this.API_READ_ACCESS_TOKEN_V4);

  final String API_READ_ACCESS_TOKEN_V4;
  static const String AUTH_HEADER = "Authorization";
  static const String BEARER = "Bearer ";

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers = {AUTH_HEADER: BEARER + API_READ_ACCESS_TOKEN_V4};
    return super.onRequest(options, handler);
  }
}
