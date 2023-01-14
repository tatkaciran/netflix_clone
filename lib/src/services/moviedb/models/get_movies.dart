enum GetMovies {
  upcoming,
  topRated,
  popular,
  nowPlaying;

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
        }
      }();
  String get label => () {
        switch (this) {
          case GetMovies.upcoming:
            return "Upcoming Movies";
          case GetMovies.topRated:
            return "Top Rated Movies";
          case GetMovies.popular:
            return "Popular Movies";
          case GetMovies.nowPlaying:
            return "Now Playing Movies";
        }
      }();
}
