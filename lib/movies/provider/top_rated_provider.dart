import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../domain/entities/movie_entity.dart';
import '../domain/entities/movie_response_entity.dart';
import '../domain/repository_interface.dart';

@injectable
class TopRatedProvider {
  final IMovieAppRepository repository;
  final _streamController =
      StreamController<Either<Failure, List<Movie>>>.broadcast();
  final List<Movie> movieList = [];
  TopRatedProvider({@required this.repository});

  Stream<Either<Failure, List<Movie>>> get getTopRatedStream {
    return _streamController.stream;
  }

  Future<void> getTopRatedSink(int page) async {
    final getTopRated = await repository.getTopRated(page);
    _streamController.sink.add(transform(getTopRated));
  }

  Either<Failure, List<Movie>> transform(
      Either<Failure, MovieResponse> topRated) {
    return topRated.fold((l) => left(l), (r) {
      final movies = r.movieList;
      movieList.addAll(movies);
      return right(movieList);
    });
  }
}
