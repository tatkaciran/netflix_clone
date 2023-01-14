import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/netflix/src/movie_db_manager/movie_db_manager_cubit.dart';
import 'package:netflix_clone/src/constants/constants.dart';
import 'package:netflix_clone/src/extensions/extensions.dart';
import 'package:netflix_clone/src/services/moviedb/daos/movies_dao.dart';
import 'package:netflix_clone/src/services/moviedb/models/get_movies.dart';

import 'src/widgets/widgets.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(child: SizedBox(height: UISize.topBarHeight(context))),
              const HomeHeader(),
              const Section(GetMovies.nowPlaying),
              const Section(GetMovies.upcoming),
              const Section(GetMovies.popular),
              const Section(GetMovies.topRated),
            ],
          ),
        );
      }),
    );
  }
}

class Section extends StatelessWidget {
  final GetMovies? getMovies;
  const Section(this.getMovies, [Key? key]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieDbManagerCubit>(
      create: (context) => MovieDbManagerCubit(),
      child: SectionView(getMovies),
    );
  }
}

class SectionView extends StatefulWidget {
  final GetMovies? getMovies;
  const SectionView(this.getMovies, [Key? key]) : super(key: key);

  @override
  State<SectionView> createState() => _SectionViewState();
}

class _SectionViewState extends State<SectionView> {
  MoviesDAO? movies;
  @override
  void initState() {
    super.initState();
    context.read<MovieDbManagerCubit>().getMovies(widget.getMovies!);
  }

  @override
  Widget build(BuildContext context) {
    movies = context.watch<MovieDbManagerCubit>().state;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: UISize.appHorizontalPadding,
        vertical: UISize.appHorizontalPadding * 0.5,
      ),
      child: SizedBox(
        width: double.infinity,
        height: context.height40 * 1,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.getMovies?.label ?? UIText.section),
                const Text(UIText.seeAll),
              ],
            ),
            Expanded(
              child: ListView.builder(
                clipBehavior: Clip.none,
                cacheExtent: 500,
                scrollDirection: Axis.horizontal,
                itemCount: movies?.results?.length ?? 0,
                itemBuilder: (context, index) {
                  var movie = movies?.results?[index];
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: UISize.appHorizontalPadding * 0.7,
                      bottom: UISize.appHorizontalPadding * 0.7,
                      right: UISize.appHorizontalPadding * 0.3,
                    ),
                    child: SizedBox(
                      width: context.width30 * 1.15,
                      height: context.height20 * 1.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            // height: context.height20 * 1.2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                  movie?.posterPath?.asImageURL ?? ""),
                            ),
                          ),
                          Text(
                            movie?.title ??
                                movie?.originalTitle ??
                                "Movie Title",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          // Text(movie?.overview ?? "description"),
                          Text(movie?.voteCount.toString() ?? ""),
                          Text(movie?.voteAverage.toString() ?? ""),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
