import 'dart:math';

import 'package:dio/dio.dart';

import '../daos/movies_dao.dart';

class DataToMoviesDAOConverterInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    var movies = MoviesDAO.fromJson(response.data);

    if (response.statusCode == min(200, 299)) {
      response.data = movies;
    } else {
      print("response.statusCode == min(200, 299) out of expected scope");
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print("onError in dio.interceptor => $err");
    return super.onError(err, handler);
  }
}
