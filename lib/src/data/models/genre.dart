import 'package:netflix_clone/src/services/moviedb/daos/genre_dao.dart';

class GenreModel {
  final int? id;
  final String? name;

  GenreModel({
    this.id,
    this.name,
  });

  factory GenreModel.fromDAO(GenreDAO dao) => GenreModel(
        id: dao.id,
        name: dao.name,
      );

  @override
  String toString() => """\n  id: $id,
  name: $name,""";
}
