import 'package:netflix_clone/src/services/moviedb/daos/language_dao.dart';

class LanguageModel {
  LanguageModel({
    this.iso6391,
    this.englishName,
    this.name,
  });

  final String? iso6391;
  final String? englishName;
  final String? name;

  factory LanguageModel.fromDAO(LanguageDAO dao) => LanguageModel(
        iso6391: dao.iso6391,
        englishName: dao.englishName,
        name: dao.name,
      );

  @override
  String toString() => """\n  iso6391: $iso6391,   
  englishName: $englishName,
  name: $name,""";
}
