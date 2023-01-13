import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/src/services/moviedb/daos/movie_dao.dart';

part 'collection_dao.g.dart';

@JsonSerializable()
class CollectionDAO {
  CollectionDAO({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  @JsonKey(name: 'page')
  final int? page;
  @JsonKey(name: 'results')
  final List<MovieDAO>? results;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  factory CollectionDAO.fromJson(Map<String, dynamic> json) =>
      _$CollectionDAOFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionDAOToJson(this);
}
