import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../domain/entities/movie_entity.dart';
import '../domain/entities/movie_response_entity.dart';
import '../domain/repository_interface.dart';

@injectable
class PopularsProvider {
  final IMovieAppRepository repository;
  final _streamController =
      StreamController<Either<Failure, List<Movie>>>.broadcast();
  final List<Movie> movieList = [];
  PopularsProvider({@required this.repository});

  Stream<Either<Failure, List<Movie>>> get getPopularsStream {
    return _streamController.stream;
  }

  Future<void> getPopularsSink(int page) async {
    final getPopulars = await repository.getPopulars(page);
    _streamController.sink.add(transform(getPopulars));
  }

  Either<Failure, List<Movie>> transform(
      Either<Failure, MovieResponse> populars) {
    return populars.fold((l) => left(l), (r) {
      final movies = r.movieList;
      movieList.addAll(movies);
      return right(movieList);
    });
  }
}
