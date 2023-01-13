// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageDAO _$LanguageDAOFromJson(Map<String, dynamic> json) => LanguageDAO(
      iso6391: json['iso_639_1'] as String?,
      englishName: json['english_name'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$LanguageDAOToJson(LanguageDAO instance) =>
    <String, dynamic>{
      'iso_639_1': instance.iso6391,
      'english_name': instance.englishName,
      'name': instance.name,
    };
