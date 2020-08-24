// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieResponseModel _$_$_MovieResponseModelFromJson(Map json) {
  return _$_MovieResponseModel(
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : MovieModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    page: json['page'] as int,
    totalResults: json['total_results'] as int,
    totalPages: json['total_pages'] as int,
  );
}

Map<String, dynamic> _$_$_MovieResponseModelToJson(
        _$_MovieResponseModel instance) =>
    <String, dynamic>{
      'results': instance.results,
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
    };
