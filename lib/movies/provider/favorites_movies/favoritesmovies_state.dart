part of 'favoritesmovies_bloc.dart';

@freezed
abstract class FavoritesmoviesState with _$FavoritesmoviesState {
  const factory FavoritesmoviesState.initial() = InitialState;
  // const factory FavoritesmoviesState.loading() = LoadingState;
  const factory FavoritesmoviesState.loaded(
      {@required List<Movie> favoriteMovieList}) = LoadedState;
  const factory FavoritesmoviesState.error() = ErrorState;
}
