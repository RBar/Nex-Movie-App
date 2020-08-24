import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_entity.dart';

part 'movie_response_entity.freezed.dart';

@freezed
abstract class MovieResponse with _$MovieResponse {
  const factory MovieResponse({
    @required List<Movie> movieList,
    @required int page,
    @required int totalResults,
    @required int totalPages,
  }) = _MovieResponse;
}
