// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyDAO _$CompanyDAOFromJson(Map<String, dynamic> json) => CompanyDAO(
      description: json['description'] as String?,
      headquarters: json['headquarters'] as String?,
      homepage: json['homepage'] as String?,
      id: json['id'] as int?,
      logoPath: json['logo_path'] as String?,
      name: json['name'] as String?,
      originCountry: json['origin_country'] as String?,
      parentCompany: json['parent_company'] == null
          ? null
          : CompanyDAO.fromJson(json['parent_company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanyDAOToJson(CompanyDAO instance) =>
    <String, dynamic>{
      'description': instance.description,
      'headquarters': instance.headquarters,
      'homepage': instance.homepage,
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'origin_country': instance.originCountry,
      'parent_company': instance.parentCompany,
    };
