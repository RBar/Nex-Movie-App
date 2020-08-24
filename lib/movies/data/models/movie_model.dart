import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_video_response.dart';

import '../../domain/entities/movie_entity.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
abstract class MovieModel implements _$MovieModel {
  @JsonSerializable(anyMap: true, fieldRename: FieldRename.snake)
  const factory MovieModel({
    @required @nullable double popularity,
    @required @nullable int voteCount,
    @required @nullable bool video,
    @required @nullable String posterPath,
    @required int id,
    @required bool adult,
    @required @nullable String backdropPath,
    @required @nullable String originalLanguage,
    @required String originalTitle,
    @required @nullable List<int> genreIds,
    @required @nullable String title,
    @required @nullable double voteAverage,
    @required @nullable String overview,
    @required @nullable String releaseDate,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  const MovieModel._();
  factory MovieModel.fromDomain(Movie movie) {
    return MovieModel(
        popularity: movie.popularity,
        voteCount: movie.voteCount,
        video: movie.video,
        posterPath: movie.posterPath,
        id: movie.id,
        adult: movie.adult,
        backdropPath: movie.backdropPath,
        originalLanguage: movie.originalLanguage,
        originalTitle: movie.originalTitle,
        genreIds: movie.genreIds,
        title: movie.title,
        voteAverage: movie.voteAverage,
        overview: movie.overview,
        releaseDate: movie.releaseDate);
  }

  Movie toDomain() {
    return Movie(
        popularity: popularity,
        voteCount: voteCount,
        video: video,
        posterPath: posterPath,
        id: id,
        adult: adult,
        backdropPath: backdropPath,
        originalLanguage: originalLanguage,
        originalTitle: originalTitle,
        genreIds: genreIds,
        title: title,
        voteAverage: voteAverage,
        overview: overview,
        releaseDate: releaseDate);
  }
}

class MoviesModels {
  final List<MovieModel> items = [];
  MoviesModels.fromJsonList(QuerySnapshot jsonList) {
    if (jsonList == null) return;

    for (final item in jsonList.documents) {
      final activity = MovieModel.fromJson(item.data);
      items.add(activity);
    }
  }
}

@freezed
abstract class MovieVideoResponseModel implements _$MovieVideoResponseModel {
  const factory MovieVideoResponseModel({
    @required String id,
    @required String key,
    @required String name,
  }) = _MovieVideoResponseModel;
  const MovieVideoResponseModel._();

  factory MovieVideoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieVideoResponseModelFromJson(json);
  MovieVideoResponse toDomain() =>
      MovieVideoResponse(id: id, key: key, name: name);
}
