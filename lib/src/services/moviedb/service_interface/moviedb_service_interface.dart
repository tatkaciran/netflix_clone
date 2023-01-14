import 'package:dio/dio.dart';

import '../daos/movie_dao.dart';
import '../daos/movies_dao.dart';
import '../models/get_movies.dart';

part '../protected_dart_file.dart';

abstract class IMovieDBService {
  Future<Response<MoviesDAO>> getMovies(GetMovies byType);
  Future<Response<MovieDAO>> getLatest();
}
