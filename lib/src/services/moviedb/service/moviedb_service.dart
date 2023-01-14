import 'package:dio/dio.dart';
import 'package:netflix_clone/src/services/moviedb/daos/movie_dao.dart';
import 'package:netflix_clone/src/services/moviedb/service_interface/moviedb_service_interface.dart';

import '../daos/movies_dao.dart';
import '../models/get_movies.dart';

class MovieDBService extends IMovieDBService {
  final IMovieDBService source;

  MovieDBService({required this.source});

  @override
  Future<Response<MoviesDAO>> getMovies(GetMovies byType) {
    return source.getMovies(byType);
  }

  @override
  Future<Response<MovieDAO>> getLatest() {
    return source.getLatest();
  }
}
