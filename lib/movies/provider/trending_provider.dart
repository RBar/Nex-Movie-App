import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../domain/entities/movie_entity.dart';
import '../domain/entities/movie_response_entity.dart';
import '../domain/repository_interface.dart';

@injectable
class TrendingProvider {
  final IMovieAppRepository repository;
  final _streamController =
      StreamController<Either<Failure, List<Movie>>>.broadcast();
  final List<Movie> movieList = [];
  TrendingProvider({@required this.repository});

  Stream<Either<Failure, List<Movie>>> get getTrendingStream {
    return _streamController.stream;
  }

  Future<void> getTrendingSink(int page) async {
    final getTrending = await repository.getTrending(page);
    _streamController.sink.add(transform(getTrending));
  }

  Either<Failure, List<Movie>> transform(
      Either<Failure, MovieResponse> trending) {
    return trending.fold((l) => left(l), (r) {
      final movies = r.movieList;
      movieList.addAll(movies);
      return right(movieList);
    });
  }
}
