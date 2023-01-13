import 'package:netflix_clone/src/services/moviedb/daos/company_dao.dart';

class CompanyModel {
  CompanyModel({
    this.description,
    this.headquarters,
    this.homepage,
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
    this.parentCompany,
  });
  final String? description;
  final String? headquarters;
  final String? homepage;
  final int? id;
  final String? logoPath;
  final String? name;
  final String? originCountry;
  final CompanyModel? parentCompany;

  factory CompanyModel.fromDAO(CompanyDAO? dao) => CompanyModel(
        description: dao?.description,
        headquarters: dao?.headquarters,
        homepage: dao?.homepage,
        id: dao?.id,
        logoPath: dao?.logoPath,
        name: dao?.name,
        originCountry: dao?.originCountry,
        parentCompany: CompanyModel.fromDAO(dao?.parentCompany),
      );

  @override
  String toString() => """\n  description: $description,
  headquarters: $headquarters,
  homepage: $homepage,
  id: $id,
  logoPath: $logoPath,
  name: $name,
  originCountry: $originCountry,
  parentCompany: $parentCompany,""";
}
