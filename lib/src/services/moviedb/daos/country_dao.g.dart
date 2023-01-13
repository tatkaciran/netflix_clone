// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryDAO _$CountryDAOFromJson(Map<String, dynamic> json) => CountryDAO(
      iso31661: json['iso_3166_1'] as String?,
      englishName: json['english_name'] as String?,
    );

Map<String, dynamic> _$CountryDAOToJson(CountryDAO instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.iso31661,
      'english_name': instance.englishName,
    };
