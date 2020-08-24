// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonModel _$_$_PersonModelFromJson(Map json) {
  return _$_PersonModel(
    birthday: json['birthday'] == null
        ? null
        : DateTime.parse(json['birthday'] as String),
    knownForDepartment: json['known_for_department'] as String,
    deathday: json['deathday'],
    id: json['id'] as int,
    name: json['name'] as String,
    alsoKnownAs:
        (json['also_known_as'] as List)?.map((e) => e as String)?.toList(),
    gender: json['gender'] as int,
    biography: json['biography'] as String,
    popularity: (json['popularity'] as num)?.toDouble(),
    placeOfBirth: json['place_of_birth'] as String,
    profilePath: json['profile_path'] as String,
    adult: json['adult'] as bool,
    imdbId: json['imdb_id'] as String,
    homepage: json['homepage'],
  );
}

Map<String, dynamic> _$_$_PersonModelToJson(_$_PersonModel instance) =>
    <String, dynamic>{
      'birthday': instance.birthday?.toIso8601String(),
      'known_for_department': instance.knownForDepartment,
      'deathday': instance.deathday,
      'id': instance.id,
      'name': instance.name,
      'also_known_as': instance.alsoKnownAs,
      'gender': instance.gender,
      'biography': instance.biography,
      'popularity': instance.popularity,
      'place_of_birth': instance.placeOfBirth,
      'profile_path': instance.profilePath,
      'adult': instance.adult,
      'imdb_id': instance.imdbId,
      'homepage': instance.homepage,
    };
