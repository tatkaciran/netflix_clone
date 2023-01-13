import 'package:dio/dio.dart';

import '../daos/movies_dao.dart';
import '../interceptors/authentication_interceptor.dart';
import '../interceptors/data_to_movies_dto_converter_interceptor.dart';
import '../models/get_movies.dart';
import '../service_interface/moviedb_service_interface.dart';

class DioMovieDBService extends IMovieDBService {
  final String _BASE_URL = 'https://$BASE_URL/$API_VERSION_3';
  final Dio _dio = Dio();

  void _configureDioOptions() {
    _dio.options.baseUrl = _BASE_URL;
    _dio.options.connectTimeout = 5000; //5s
    _dio.options.receiveTimeout = 3000;
    _dio.interceptors.add(AuthenticationInterceptor(API_READ_ACCESS_TOKEN_V4));
    _dio.interceptors.add(DataToMoviesDAOConverterInterceptor());
  }

  @override
  Future<Response<MoviesDAO>> getMovies(GetMovies byType) {
    _configureDioOptions();
    return _dio.get(byType.path);
  }
}
