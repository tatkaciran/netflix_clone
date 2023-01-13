import 'package:netflix_clone/src/services/moviedb/daos/country_dao.dart';

class CountryModel {
  CountryModel({
    this.iso31661,
    this.englishName,
  });

  final String? iso31661;
  final String? englishName;

  factory CountryModel.fromDAO(CountryDAO dao) => CountryModel(
        iso31661: dao.iso31661,
        englishName: dao.englishName,
      );

  @override
  String toString() => """\n  iso31661: $iso31661,
  englishName: $englishName,""";
}
