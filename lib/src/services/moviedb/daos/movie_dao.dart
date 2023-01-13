import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/src/services/moviedb/daos/collection_dao.dart';
import 'package:netflix_clone/src/services/moviedb/daos/genre_dao.dart';

import 'company_dao.dart';
import 'country_dao.dart';
import 'language_dao.dart';

part 'movie_dao.g.dart';

@JsonSerializable()
class MovieDAO {
  MovieDAO({
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

  @JsonKey(name: 'adult')
  final bool? adult;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'belongs_to_collection')
  final CollectionDAO? belongsToCollection;
  @JsonKey(name: 'budget')
  final int? budget;
  @JsonKey(name: 'genres')
  final List<GenreDAO>? genres;
  @JsonKey(name: 'homepage')
  final String? homepage;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @JsonKey(name: 'overview')
  final String? overview;
  @JsonKey(name: 'popularity')
  final double? popularity;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'production_companies')
  final List<CompanyDAO>? productionCompanies;
  @JsonKey(name: 'production_countries')
  final List<CountryDAO>? productionCountries;
  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
  @JsonKey(name: 'revenue')
  final int? revenue;
  @JsonKey(name: 'runtime')
  final int? runtime;
  @JsonKey(name: 'spoken_languages')
  final List<LanguageDAO>? spokenLanguages;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'tagline')
  final String? tagline;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'video')
  final bool? video;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  factory MovieDAO.fromJson(Map<String, dynamic> json) =>
      _$MovieDAOFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDAOToJson(this);
}
