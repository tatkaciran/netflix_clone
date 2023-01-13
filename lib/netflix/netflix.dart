import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/src/presentation/chat/chat_page.dart';
import 'package:netflix_clone/src/presentation/home/home_page.dart';
import 'package:netflix_clone/src/presentation/profile/profile_page.dart';
import 'package:netflix_clone/src/presentation/watch_now/watch_now_page.dart';
import 'package:netflix_clone/src/services/moviedb/daos/movies_dao.dart';

import '../src/services/moviedb/models/get_movies.dart';
import '../src/services/moviedb/service_sources/dio_moviedb_service.dart';
import '../src/services/moviedb/service/moviedb_service.dart';
import '../src/services/moviedb/service_interface/moviedb_service_interface.dart';
import 'netflix_view.dart';

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> pages = [
      HomePage(),
      WatchNowPage(),
      MessagesPage(),
      ProfilePage(),
    ];

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          // scaffoldBackgroundColor: UIColor.backgroundColor,
          scaffoldBackgroundColor: Colors.black),
      home: Builder(builder: (context) {
        _fetchMovies();
        return const NetflixView(
          pages: pages,
        );
      }),
    );
  }
}

Future<void> _fetchMovies() async {
  IMovieDBService source = DioMovieDBService();
  var service = MovieDBService(source: source);
  var response = await service.getMovies(GetMovies.nowPlaying);
  if (response.statusCode == min(200, 299)) {
    var movies = response.data as MoviesDAO;
    movies.results
        ?.forEach((movie) => print(movie.title ?? movie.originalTitle));
  }
}
