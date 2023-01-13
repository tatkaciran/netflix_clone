import 'package:json_annotation/json_annotation.dart';

part 'country_dao.g.dart';

@JsonSerializable()
class CountryDAO {
  CountryDAO({
    this.iso31661,
    this.englishName,
  });

  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  @JsonKey(name: 'english_name')
  final String? englishName;

  factory CountryDAO.fromJson(Map<String, dynamic> json) =>
      _$CountryDAOFromJson(json);

  Map<String, dynamic> toJson() => _$CountryDAOToJson(this);
}
