part of 'favoritesmovies_bloc.dart';

@freezed
abstract class FavoritesmoviesEvent with _$FavoritesmoviesEvent {
  const factory FavoritesmoviesEvent.getFavoritesMovies({@required User user}) =
      GetFavoritesMovies;
  const factory FavoritesmoviesEvent.addFavoriteMovie(
      {@required User user, @required Movie movie}) = AddFavoriteMovie;
  const factory FavoritesmoviesEvent.deleteFavoriteMovie(
      {@required User user, @required Movie movie}) = DeleteFavoriteMovie;
}
