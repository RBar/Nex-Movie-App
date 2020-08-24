import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:nex_movie_app/auth/domain/user.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_entity.dart';
import 'package:nex_movie_app/movies/domain/repository_interface.dart';

part 'favoritesmovies_event.dart';
part 'favoritesmovies_state.dart';
part 'favoritesmovies_bloc.freezed.dart';

@injectable
class FavoritesmoviesBloc
    extends Bloc<FavoritesmoviesEvent, FavoritesmoviesState> {
  final IMovieAppRepository repository;
  FavoritesmoviesBloc(this.repository)
      : super(const FavoritesmoviesState.initial());

  @override
  Stream<FavoritesmoviesState> mapEventToState(
    FavoritesmoviesEvent event,
  ) async* {
    yield* event.map(getFavoritesMovies: (event) async* {
      final failureOrSucces = await repository.getFavoritesMovies(event.user);
      yield failureOrSucces.fold(
          (l) => const FavoritesmoviesState.error(),
          (favoritesMovies) =>
              FavoritesmoviesState.loaded(favoriteMovieList: favoritesMovies));
    }, addFavoriteMovie: (event) async* {
      await repository.addFavoriteMovie(event.user, event.movie);
      final failureOrSucces = await repository.getFavoritesMovies(event.user);
      yield failureOrSucces.fold(
          (l) => const FavoritesmoviesState.error(),
          (favoritesMovies) =>
              FavoritesmoviesState.loaded(favoriteMovieList: favoritesMovies));
    }, deleteFavoriteMovie: (event) async* {
      await repository.deleteFavoriteMovie(event.user, event.movie);
      final failureOrSucces = await repository.getFavoritesMovies(event.user);
      yield failureOrSucces.fold(
          (l) => const FavoritesmoviesState.error(),
          (favoritesMovies) =>
              FavoritesmoviesState.loaded(favoriteMovieList: favoritesMovies));
    });
  }
}
