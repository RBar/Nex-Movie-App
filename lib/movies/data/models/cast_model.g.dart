// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CastModel _$_$_CastModelFromJson(Map json) {
  return _$_CastModel(
    castId: json['cast_id'] as int,
    character: json['character'] as String,
    creditId: json['credit_id'] as String,
    gender: json['gender'] as int,
    id: json['id'] as int,
    name: json['name'] as String,
    order: json['order'] as int,
    profilePath: json['profile_path'] as String,
  );
}

Map<String, dynamic> _$_$_CastModelToJson(_$_CastModel instance) =>
    <String, dynamic>{
      'cast_id': instance.castId,
      'character': instance.character,
      'credit_id': instance.creditId,
      'gender': instance.gender,
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'profile_path': instance.profilePath,
    };

_$_CastResponseModel _$_$_CastResponseModelFromJson(Map<String, dynamic> json) {
  return _$_CastResponseModel(
    cast: (json['cast'] as List)
        ?.map((e) =>
            e == null ? null : CastModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CastResponseModelToJson(
        _$_CastResponseModel instance) =>
    <String, dynamic>{
      'cast': instance.cast,
    };
