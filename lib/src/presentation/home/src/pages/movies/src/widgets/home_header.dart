import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/netflix/src/movie_db_manager/movie_db_manager_cubit.dart';
import 'package:netflix_clone/src/constants/constants.dart';
import 'package:netflix_clone/src/extensions/extensions.dart';
import 'package:netflix_clone/src/presentation/home/src/widgets/play_button.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieDbManagerCubit>(
      create: (context) => MovieDbManagerCubit()..getLatestMovie(),
      child: Builder(builder: (context) {
        var movie = context.watch<MovieDbManagerCubit>().state?.results?.first;

        return SizedBox(
          width: double.infinity,
          height: context.height40 * 0.70,
          child: Stack(
            fit: StackFit.expand,
            children: [
              // if (movie != null && movie.backdropPath != null)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: UISize.appHorizontalPadding,
                  vertical: UISize.appHorizontalPadding * 0.5,
                ),
                child: (movie != null &&
                        (movie.backdropPath != null ||
                            movie.posterPath != null))
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "${movie.backdropPath ?? movie.posterPath}"
                              .asImageURL,
                          fit: BoxFit.fitWidth,
                        ),
                      )
                    : const DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(UISize.borderRadiusSmall),
                          ),
                          color: Colors.purple,
                        ),
                      ),
              ),
              Positioned(
                bottom: 50,
                left: 70,
                child: Text(
                  """
Poster Path: ${movie?.posterPath}
Backdrop Path: ${movie?.backdropPath}
${movie?.title ?? movie?.originalTitle ?? ""}""",
                  maxLines: 3,
                  style: const TextStyle(shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 15,
                    ),
                  ]),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 55,
                child: PlayButton(
                  onPressed: () {},
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
