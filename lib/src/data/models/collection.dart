import 'package:netflix_clone/src/data/models/movie.dart';
import 'package:netflix_clone/src/services/moviedb/daos/collection_dao.dart';

class CollectionModel {
  CollectionModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  final int? page;
  final List<MovieModel>? results;
  final int? totalPages;
  final int? totalResults;

  factory CollectionModel.fromDAO(CollectionDAO? dao) => CollectionModel(
        page: dao?.page,
        results: dao?.results?.map((dao) => MovieModel.fromDAO(dao)).toList(),
        totalPages: dao?.totalPages,
        totalResults: dao?.totalResults,
      );

  @override
  String toString() => """\n  page: $page,   
  results: $results,  
  totalPages: $totalPages, 
  totalResults: $totalResults,""";
}
