import 'dart:math';

import 'package:dio/dio.dart';
import 'package:netflix_clone/src/extensions/extensions.dart';

import '../daos/movie_dao.dart';

class DataToMovieDAOConverterInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == min(200, 299)) {
      var movie = MovieDAO.fromJson(response.data);
      response.data = movie;
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    "onError in DataToMovieDAOConverterInterceptor => $err".println;
    return super.onError(err, handler);
  }
}
