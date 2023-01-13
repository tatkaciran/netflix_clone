import 'package:json_annotation/json_annotation.dart';

part 'genre_dao.g.dart';

@JsonSerializable()
class GenreDAO {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;

  GenreDAO({
    this.id,
    this.name,
  });

  factory GenreDAO.fromJson(Map<String, dynamic> json) =>
      _$GenreDAOFromJson(json);

  Map<String, dynamic> toJson() => _$GenreDAOToJson(this);
}
