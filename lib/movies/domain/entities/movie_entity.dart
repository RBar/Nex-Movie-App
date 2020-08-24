import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_entity.freezed.dart';

@freezed
abstract class Movie with _$Movie {
  const factory Movie({
    @required int id,
    @required bool adult,
    @required String originalTitle,
    @required @nullable double popularity,
    @required @nullable int voteCount,
    @required @nullable bool video,
    @required @nullable String posterPath,
    @required @nullable String backdropPath,
    @required @nullable String originalLanguage,
    @required @nullable List<int> genreIds,
    @required @nullable String title,
    @required @nullable double voteAverage,
    @required @nullable String overview,
    @required @nullable String releaseDate,
  }) = _Movie;
}
