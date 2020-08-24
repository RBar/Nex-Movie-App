import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/movie_response_entity.dart';
import 'movie_model.dart';

part 'movie_response_model.freezed.dart';
part 'movie_response_model.g.dart';

//freezed
@freezed
abstract class MovieResponseModel implements _$MovieResponseModel {
  @JsonSerializable(anyMap: true, fieldRename: FieldRename.snake)
  const factory MovieResponseModel({
    @required List<MovieModel> results,
    @required int page,
    @required int totalResults,
    @required int totalPages,
  }) = _MovieResponseModel;
  const MovieResponseModel._();
  factory MovieResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseModelFromJson(json);
  MovieResponse toDomain() => MovieResponse(
      movieList: results.map((movie) => movie.toDomain()).toList(),
      page: page,
      totalResults: totalResults,
      totalPages: totalPages);
}
