import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../domain/entities/movie_entity.dart';
import '../domain/entities/movie_response_entity.dart';
import '../domain/repository_interface.dart';

@injectable
class MovieOfGenreProvider {
  final IMovieAppRepository repository;
  final _streamController =
      StreamController<Either<Failure, List<Movie>>>.broadcast();
  final List<Movie> movieList = [];
  MovieOfGenreProvider({@required this.repository});

  Stream<Either<Failure, List<Movie>>> get getMovieOfGenreStream {
    return _streamController.stream;
  }

  Future<void> getMovieOfGenreSink(int page, int genreId) async {
    final getMovieOfGenre = await repository.getMoviesOfGenre(genreId, page);
    _streamController.sink.add(transform(getMovieOfGenre));
  }

  Either<Failure, List<Movie>> transform(
      Either<Failure, MovieResponse> movieOfGenre) {
    return movieOfGenre.fold((l) => left(l), (r) {
      final movies = r.movieList;
      movieList.addAll(movies);
      return right(movieList);
    });
  }
}
