import 'package:json_annotation/json_annotation.dart';

part 'language_dao.g.dart';

@JsonSerializable()
class LanguageDAO {
  LanguageDAO({
    this.iso6391,
    this.englishName,
    this.name,
  });

  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @JsonKey(name: 'english_name')
  final String? englishName;
  @JsonKey(name: 'name')
  final String? name;

  factory LanguageDAO.fromJson(Map<String, dynamic> json) =>
      _$LanguageDAOFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageDAOToJson(this);
}
