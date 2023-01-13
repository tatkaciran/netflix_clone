// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionDAO _$CollectionDAOFromJson(Map<String, dynamic> json) =>
    CollectionDAO(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieDAO.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$CollectionDAOToJson(CollectionDAO instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
