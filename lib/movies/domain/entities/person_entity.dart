import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_entity.freezed.dart';

@freezed
abstract class Person with _$Person {
  const factory Person({
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
  }) = _Person;
}
