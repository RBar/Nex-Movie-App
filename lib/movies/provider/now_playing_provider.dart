import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../domain/entities/movie_entity.dart';
import '../domain/entities/movie_response_entity.dart';
import '../domain/repository_interface.dart';

@injectable
class NowPlayingProvider {
  final IMovieAppRepository repository;
  final _streamController =
      StreamController<Either<Failure, List<Movie>>>.broadcast();
  final List<Movie> movieList = [];
  NowPlayingProvider({@required this.repository});

  Stream<Either<Failure, List<Movie>>> get getNowPlayingStream {
    return _streamController.stream;
  }

  Future<void> getNowPlayingSink(int page) async {
    final getNowPlaying = await repository.getNowPlaying(page);
    _streamController.sink.add(transform(getNowPlaying));
  }

  Either<Failure, List<Movie>> transform(
      Either<Failure, MovieResponse> nowPlaying) {
    return nowPlaying.fold((l) => left(l), (r) {
      final movies = r.movieList;
      movieList.addAll(movies);
      return right(movieList);
    });
  }
}
