import 'package:bloc/bloc.dart';
import 'package:netflix_clone/src/extensions/extensions.dart';

import '../../../src/services/moviedb/daos/movie_dao.dart';
import '../../../src/services/moviedb/daos/movies_dao.dart';
import '../../../src/services/moviedb/models/get_movies.dart';
import '../../../src/services/moviedb/service/moviedb_service.dart';
import '../../../src/services/moviedb/service_interface/moviedb_service_interface.dart';
import '../../../src/services/moviedb/service_sources/dio_moviedb_service.dart';

class MovieDbManagerCubit extends Cubit<MoviesDAO?> {
  MovieDbManagerCubit() : super(null);

  Future<void> getMovies(GetMovies getMovies) async {
    try {
      var movies = await _fetchMovies(getMovies);
      emit(movies);
    } catch (e) {
      '''
when trying get movies in movie manager cubit occur an error : $e'''
          .println;
    }
  }

  Future<void> getLatestMovie() async {
    try {
      var movie = await _fetchLatestMovie();
      if (movie != null) {
        var movies = MoviesDAO(results: [movie]);
        emit(movies);
      }
    } catch (e) {
      '''
when trying getLatestMovie in movie manager cubit occur an error : $e'''
          .println;
    }
  }

  Future<MoviesDAO?> _fetchMovies(GetMovies byType) async {
    IMovieDBService source = DioMovieDBService();
    var service = MovieDBService(source: source);
    var response = await service.getMovies(byType);
    return response.data;
  }

  Future<MovieDAO?> _fetchLatestMovie() async {
    IMovieDBService source = DioMovieDBService();
    var service = MovieDBService(source: source);
    var response = await service.getLatest();
    return response.data;
  }
}
