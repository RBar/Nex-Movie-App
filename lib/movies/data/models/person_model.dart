import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/person_entity.dart';

part 'person_model.freezed.dart';
part 'person_model.g.dart';

@freezed
abstract class PersonModel implements _$PersonModel {
  @JsonSerializable(anyMap: true, fieldRename: FieldRename.snake)
  const factory PersonModel({
    @required DateTime birthday,
    @required @nullable String knownForDepartment,
    @required @nullable dynamic deathday,
    @required @nullable int id,
    @required String name,
    @required @nullable List<String> alsoKnownAs,
    @required @nullable int gender,
    @required @nullable String biography,
    @required @nullable double popularity,
    @required @nullable String placeOfBirth,
    @required @nullable String profilePath,
    @required @nullable bool adult,
    @required @nullable String imdbId,
    @required @nullable dynamic homepage,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);
  const PersonModel._();
  Person toDomain() => Person(
      birthday: birthday,
      knownForDepartment: knownForDepartment,
      deathday: deathday,
      id: id,
      name: name,
      alsoKnownAs: alsoKnownAs,
      gender: gender,
      biography: biography,
      popularity: popularity,
      placeOfBirth: placeOfBirth,
      profilePath: profilePath,
      adult: adult,
      imdbId: imdbId,
      homepage: homepage);
}
