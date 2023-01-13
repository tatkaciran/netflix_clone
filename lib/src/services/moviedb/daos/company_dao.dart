import 'package:json_annotation/json_annotation.dart';

part 'company_dao.g.dart';

@JsonSerializable()
class CompanyDAO {
  CompanyDAO({
    this.description,
    this.headquarters,
    this.homepage,
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
    this.parentCompany,
  });
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'headquarters')
  final String? headquarters;
  @JsonKey(name: 'homepage')
  final String? homepage;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'origin_country')
  final String? originCountry;
  @JsonKey(name: 'parent_company')
  final CompanyDAO? parentCompany;

  factory CompanyDAO.fromJson(Map<String, dynamic> json) =>
      _$CompanyDAOFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyDAOToJson(this);
}
