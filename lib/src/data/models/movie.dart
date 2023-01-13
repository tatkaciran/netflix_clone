import 'package:netflix_clone/src/data/models/collection.dart';
import 'package:netflix_clone/src/data/models/company.dart';
import 'package:netflix_clone/src/data/models/country.dart';
import 'package:netflix_clone/src/data/models/genre.dart';
import 'package:netflix_clone/src/data/models/language.dart';
import 'package:netflix_clone/src/services/moviedb/daos/movie_dao.dart';

class MovieModel {
  MovieModel({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  final bool? adult;

  final String? backdropPath;
  final CollectionModel? belongsToCollection;
  final int? budget;
  final List<GenreModel>? genres;
  final String? homepage;
  final int? id;
  final String? imdbId;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final List<CompanyModel>? productionCompanies;
  final List<CountryModel>? productionCountries;
  final DateTime? releaseDate;
  final int? revenue;
  final int? runtime;
  final List<LanguageModel>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  factory MovieModel.fromDAO(MovieDAO dao) => MovieModel(
        adult: dao.adult,
        backdropPath: dao.backdropPath,
        belongsToCollection: CollectionModel.fromDAO(dao.belongsToCollection),
        budget: dao.budget,
        genres: dao.genres?.map((dao) => GenreModel.fromDAO(dao)).toList(),
        homepage: dao.homepage,
        id: dao.id,
        imdbId: dao.imdbId,
        originalLanguage: dao.originalLanguage,
        originalTitle: dao.originalTitle,
        overview: dao.overview,
        popularity: dao.popularity,
        posterPath: dao.posterPath,
        productionCompanies: dao.productionCompanies
            ?.map((dao) => CompanyModel.fromDAO(dao))
            .toList(),
        productionCountries: dao.productionCountries
            ?.map((dao) => CountryModel.fromDAO(dao))
            .toList(),
        releaseDate: dao.releaseDate,
        revenue: dao.revenue,
        runtime: dao.runtime,
        spokenLanguages: dao.spokenLanguages
            ?.map((dao) => LanguageModel.fromDAO(dao))
            .toList(),
        status: dao.status,
        tagline: dao.tagline,
        title: dao.title,
        video: dao.video,
        voteAverage: dao.voteAverage,
        voteCount: dao.voteCount,
      );

  @override
  String toString() => '''
-------------------------------------------------------------------------------
Movie:
adult: $adult
backdropPath: $backdropPath
belongsToCollection: $belongsToCollection
budget: $budget
genres: $genres
homepage: $homepage
id: $id
imdbId: $imdbId
originalLanguage: $originalLanguage
originalTitle: $originalTitle
overview: $overview
popularity: $popularity
posterPath: $posterPath
productionCompanies: $productionCompanies
productionCountries: $productionCountries
releaseDate: $releaseDate
revenue: $revenue
runtime: $runtime
spokenLanguages: $spokenLanguages
status: $status
tagline: $tagline
title: $title
video: $video
voteAverage: $voteAverage
voteCount: $voteCount
''';
}
