import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../domain/entities/movie_entity.dart';
import '../domain/entities/movie_response_entity.dart';
import '../domain/repository_interface.dart';

@injectable
class SearchProvider {
  final IMovieAppRepository repository;
  final _streamController =
      StreamController<Either<Failure, List<Movie>>>.broadcast();
  List<Movie> movieList = [];
  SearchProvider({@required this.repository});

  Stream<Either<Failure, List<Movie>>> get getSearchStream {
    return _streamController.stream;
  }

  Future<void> getSearchSink(
      {@required int page, @required String query}) async {
    if (page == 1) {
      movieList = [];
    }
    final getSearch = await repository.searchMovies(query, page);
    _streamController.sink.add(transform(getSearch));
  }

  Either<Failure, List<Movie>> transform(
      Either<Failure, MovieResponse> search) {
    return search.fold((l) => left(l), (r) {
      final movies = r.movieList;
      movieList.addAll(movies);
      return right(movieList);
    });
  }
}
