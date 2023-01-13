enum GetMovies {
  upcoming,
  topRated,
  popular,
  nowPlaying,
  latest;

  String get path => () {
        switch (this) {
          case GetMovies.upcoming:
            return "/movie/upcoming";
          case GetMovies.topRated:
            return "/movie/top_rated";
          case GetMovies.popular:
            return "/movie/popular";
          case GetMovies.nowPlaying:
            return "/movie/now_playing";
          case GetMovies.latest:
            return "/movie/latest";
        }
      }();
}
