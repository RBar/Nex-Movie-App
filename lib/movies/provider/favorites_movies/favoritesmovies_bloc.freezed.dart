// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favoritesmovies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FavoritesmoviesEventTearOff {
  const _$FavoritesmoviesEventTearOff();

// ignore: unused_element
  GetFavoritesMovies getFavoritesMovies({@required User user}) {
    return GetFavoritesMovies(
      user: user,
    );
  }

// ignore: unused_element
  AddFavoriteMovie addFavoriteMovie(
      {@required User user, @required Movie movie}) {
    return AddFavoriteMovie(
      user: user,
      movie: movie,
    );
  }

// ignore: unused_element
  DeleteFavoriteMovie deleteFavoriteMovie(
      {@required User user, @required Movie movie}) {
    return DeleteFavoriteMovie(
      user: user,
      movie: movie,
    );
  }
}

// ignore: unused_element
const $FavoritesmoviesEvent = _$FavoritesmoviesEventTearOff();

mixin _$FavoritesmoviesEvent {
  User get user;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getFavoritesMovies(User user),
    @required Result addFavoriteMovie(User user, Movie movie),
    @required Result deleteFavoriteMovie(User user, Movie movie),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getFavoritesMovies(User user),
    Result addFavoriteMovie(User user, Movie movie),
    Result deleteFavoriteMovie(User user, Movie movie),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getFavoritesMovies(GetFavoritesMovies value),
    @required Result addFavoriteMovie(AddFavoriteMovie value),
    @required Result deleteFavoriteMovie(DeleteFavoriteMovie value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getFavoritesMovies(GetFavoritesMovies value),
    Result addFavoriteMovie(AddFavoriteMovie value),
    Result deleteFavoriteMovie(DeleteFavoriteMovie value),
    @required Result orElse(),
  });

  $FavoritesmoviesEventCopyWith<FavoritesmoviesEvent> get copyWith;
}

abstract class $FavoritesmoviesEventCopyWith<$Res> {
  factory $FavoritesmoviesEventCopyWith(FavoritesmoviesEvent value,
          $Res Function(FavoritesmoviesEvent) then) =
      _$FavoritesmoviesEventCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$FavoritesmoviesEventCopyWithImpl<$Res>
    implements $FavoritesmoviesEventCopyWith<$Res> {
  _$FavoritesmoviesEventCopyWithImpl(this._value, this._then);

  final FavoritesmoviesEvent _value;
  // ignore: unused_field
  final $Res Function(FavoritesmoviesEvent) _then;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class $GetFavoritesMoviesCopyWith<$Res>
    implements $FavoritesmoviesEventCopyWith<$Res> {
  factory $GetFavoritesMoviesCopyWith(
          GetFavoritesMovies value, $Res Function(GetFavoritesMovies) then) =
      _$GetFavoritesMoviesCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

class _$GetFavoritesMoviesCopyWithImpl<$Res>
    extends _$FavoritesmoviesEventCopyWithImpl<$Res>
    implements $GetFavoritesMoviesCopyWith<$Res> {
  _$GetFavoritesMoviesCopyWithImpl(
      GetFavoritesMovies _value, $Res Function(GetFavoritesMovies) _then)
      : super(_value, (v) => _then(v as GetFavoritesMovies));

  @override
  GetFavoritesMovies get _value => super._value as GetFavoritesMovies;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(GetFavoritesMovies(
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

class _$GetFavoritesMovies implements GetFavoritesMovies {
  const _$GetFavoritesMovies({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'FavoritesmoviesEvent.getFavoritesMovies(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFavoritesMovies &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $GetFavoritesMoviesCopyWith<GetFavoritesMovies> get copyWith =>
      _$GetFavoritesMoviesCopyWithImpl<GetFavoritesMovies>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getFavoritesMovies(User user),
    @required Result addFavoriteMovie(User user, Movie movie),
    @required Result deleteFavoriteMovie(User user, Movie movie),
  }) {
    assert(getFavoritesMovies != null);
    assert(addFavoriteMovie != null);
    assert(deleteFavoriteMovie != null);
    return getFavoritesMovies(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getFavoritesMovies(User user),
    Result addFavoriteMovie(User user, Movie movie),
    Result deleteFavoriteMovie(User user, Movie movie),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFavoritesMovies != null) {
      return getFavoritesMovies(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getFavoritesMovies(GetFavoritesMovies value),
    @required Result addFavoriteMovie(AddFavoriteMovie value),
    @required Result deleteFavoriteMovie(DeleteFavoriteMovie value),
  }) {
    assert(getFavoritesMovies != null);
    assert(addFavoriteMovie != null);
    assert(deleteFavoriteMovie != null);
    return getFavoritesMovies(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getFavoritesMovies(GetFavoritesMovies value),
    Result addFavoriteMovie(AddFavoriteMovie value),
    Result deleteFavoriteMovie(DeleteFavoriteMovie value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFavoritesMovies != null) {
      return getFavoritesMovies(this);
    }
    return orElse();
  }
}

abstract class GetFavoritesMovies implements FavoritesmoviesEvent {
  const factory GetFavoritesMovies({@required User user}) =
      _$GetFavoritesMovies;

  @override
  User get user;
  @override
  $GetFavoritesMoviesCopyWith<GetFavoritesMovies> get copyWith;
}

abstract class $AddFavoriteMovieCopyWith<$Res>
    implements $FavoritesmoviesEventCopyWith<$Res> {
  factory $AddFavoriteMovieCopyWith(
          AddFavoriteMovie value, $Res Function(AddFavoriteMovie) then) =
      _$AddFavoriteMovieCopyWithImpl<$Res>;
  @override
  $Res call({User user, Movie movie});

  @override
  $UserCopyWith<$Res> get user;
  $MovieCopyWith<$Res> get movie;
}

class _$AddFavoriteMovieCopyWithImpl<$Res>
    extends _$FavoritesmoviesEventCopyWithImpl<$Res>
    implements $AddFavoriteMovieCopyWith<$Res> {
  _$AddFavoriteMovieCopyWithImpl(
      AddFavoriteMovie _value, $Res Function(AddFavoriteMovie) _then)
      : super(_value, (v) => _then(v as AddFavoriteMovie));

  @override
  AddFavoriteMovie get _value => super._value as AddFavoriteMovie;

  @override
  $Res call({
    Object user = freezed,
    Object movie = freezed,
  }) {
    return _then(AddFavoriteMovie(
      user: user == freezed ? _value.user : user as User,
      movie: movie == freezed ? _value.movie : movie as Movie,
    ));
  }

  @override
  $MovieCopyWith<$Res> get movie {
    if (_value.movie == null) {
      return null;
    }
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

class _$AddFavoriteMovie implements AddFavoriteMovie {
  const _$AddFavoriteMovie({@required this.user, @required this.movie})
      : assert(user != null),
        assert(movie != null);

  @override
  final User user;
  @override
  final Movie movie;

  @override
  String toString() {
    return 'FavoritesmoviesEvent.addFavoriteMovie(user: $user, movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddFavoriteMovie &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(movie);

  @override
  $AddFavoriteMovieCopyWith<AddFavoriteMovie> get copyWith =>
      _$AddFavoriteMovieCopyWithImpl<AddFavoriteMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getFavoritesMovies(User user),
    @required Result addFavoriteMovie(User user, Movie movie),
    @required Result deleteFavoriteMovie(User user, Movie movie),
  }) {
    assert(getFavoritesMovies != null);
    assert(addFavoriteMovie != null);
    assert(deleteFavoriteMovie != null);
    return addFavoriteMovie(user, movie);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getFavoritesMovies(User user),
    Result addFavoriteMovie(User user, Movie movie),
    Result deleteFavoriteMovie(User user, Movie movie),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addFavoriteMovie != null) {
      return addFavoriteMovie(user, movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getFavoritesMovies(GetFavoritesMovies value),
    @required Result addFavoriteMovie(AddFavoriteMovie value),
    @required Result deleteFavoriteMovie(DeleteFavoriteMovie value),
  }) {
    assert(getFavoritesMovies != null);
    assert(addFavoriteMovie != null);
    assert(deleteFavoriteMovie != null);
    return addFavoriteMovie(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getFavoritesMovies(GetFavoritesMovies value),
    Result addFavoriteMovie(AddFavoriteMovie value),
    Result deleteFavoriteMovie(DeleteFavoriteMovie value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addFavoriteMovie != null) {
      return addFavoriteMovie(this);
    }
    return orElse();
  }
}

abstract class AddFavoriteMovie implements FavoritesmoviesEvent {
  const factory AddFavoriteMovie({@required User user, @required Movie movie}) =
      _$AddFavoriteMovie;

  @override
  User get user;
  Movie get movie;
  @override
  $AddFavoriteMovieCopyWith<AddFavoriteMovie> get copyWith;
}

abstract class $DeleteFavoriteMovieCopyWith<$Res>
    implements $FavoritesmoviesEventCopyWith<$Res> {
  factory $DeleteFavoriteMovieCopyWith(
          DeleteFavoriteMovie value, $Res Function(DeleteFavoriteMovie) then) =
      _$DeleteFavoriteMovieCopyWithImpl<$Res>;
  @override
  $Res call({User user, Movie movie});

  @override
  $UserCopyWith<$Res> get user;
  $MovieCopyWith<$Res> get movie;
}

class _$DeleteFavoriteMovieCopyWithImpl<$Res>
    extends _$FavoritesmoviesEventCopyWithImpl<$Res>
    implements $DeleteFavoriteMovieCopyWith<$Res> {
  _$DeleteFavoriteMovieCopyWithImpl(
      DeleteFavoriteMovie _value, $Res Function(DeleteFavoriteMovie) _then)
      : super(_value, (v) => _then(v as DeleteFavoriteMovie));

  @override
  DeleteFavoriteMovie get _value => super._value as DeleteFavoriteMovie;

  @override
  $Res call({
    Object user = freezed,
    Object movie = freezed,
  }) {
    return _then(DeleteFavoriteMovie(
      user: user == freezed ? _value.user : user as User,
      movie: movie == freezed ? _value.movie : movie as Movie,
    ));
  }

  @override
  $MovieCopyWith<$Res> get movie {
    if (_value.movie == null) {
      return null;
    }
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

class _$DeleteFavoriteMovie implements DeleteFavoriteMovie {
  const _$DeleteFavoriteMovie({@required this.user, @required this.movie})
      : assert(user != null),
        assert(movie != null);

  @override
  final User user;
  @override
  final Movie movie;

  @override
  String toString() {
    return 'FavoritesmoviesEvent.deleteFavoriteMovie(user: $user, movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteFavoriteMovie &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(movie);

  @override
  $DeleteFavoriteMovieCopyWith<DeleteFavoriteMovie> get copyWith =>
      _$DeleteFavoriteMovieCopyWithImpl<DeleteFavoriteMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getFavoritesMovies(User user),
    @required Result addFavoriteMovie(User user, Movie movie),
    @required Result deleteFavoriteMovie(User user, Movie movie),
  }) {
    assert(getFavoritesMovies != null);
    assert(addFavoriteMovie != null);
    assert(deleteFavoriteMovie != null);
    return deleteFavoriteMovie(user, movie);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getFavoritesMovies(User user),
    Result addFavoriteMovie(User user, Movie movie),
    Result deleteFavoriteMovie(User user, Movie movie),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFavoriteMovie != null) {
      return deleteFavoriteMovie(user, movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getFavoritesMovies(GetFavoritesMovies value),
    @required Result addFavoriteMovie(AddFavoriteMovie value),
    @required Result deleteFavoriteMovie(DeleteFavoriteMovie value),
  }) {
    assert(getFavoritesMovies != null);
    assert(addFavoriteMovie != null);
    assert(deleteFavoriteMovie != null);
    return deleteFavoriteMovie(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getFavoritesMovies(GetFavoritesMovies value),
    Result addFavoriteMovie(AddFavoriteMovie value),
    Result deleteFavoriteMovie(DeleteFavoriteMovie value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFavoriteMovie != null) {
      return deleteFavoriteMovie(this);
    }
    return orElse();
  }
}

abstract class DeleteFavoriteMovie implements FavoritesmoviesEvent {
  const factory DeleteFavoriteMovie(
      {@required User user, @required Movie movie}) = _$DeleteFavoriteMovie;

  @override
  User get user;
  Movie get movie;
  @override
  $DeleteFavoriteMovieCopyWith<DeleteFavoriteMovie> get copyWith;
}

class _$FavoritesmoviesStateTearOff {
  const _$FavoritesmoviesStateTearOff();

// ignore: unused_element
  InitialState initial() {
    return const InitialState();
  }

// ignore: unused_element
  LoadedState loaded({@required List<Movie> favoriteMovieList}) {
    return LoadedState(
      favoriteMovieList: favoriteMovieList,
    );
  }

// ignore: unused_element
  ErrorState error() {
    return const ErrorState();
  }
}

// ignore: unused_element
const $FavoritesmoviesState = _$FavoritesmoviesStateTearOff();

mixin _$FavoritesmoviesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Movie> favoriteMovieList),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Movie> favoriteMovieList),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialState value),
    @required Result loaded(LoadedState value),
    @required Result error(ErrorState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialState value),
    Result loaded(LoadedState value),
    Result error(ErrorState value),
    @required Result orElse(),
  });
}

abstract class $FavoritesmoviesStateCopyWith<$Res> {
  factory $FavoritesmoviesStateCopyWith(FavoritesmoviesState value,
          $Res Function(FavoritesmoviesState) then) =
      _$FavoritesmoviesStateCopyWithImpl<$Res>;
}

class _$FavoritesmoviesStateCopyWithImpl<$Res>
    implements $FavoritesmoviesStateCopyWith<$Res> {
  _$FavoritesmoviesStateCopyWithImpl(this._value, this._then);

  final FavoritesmoviesState _value;
  // ignore: unused_field
  final $Res Function(FavoritesmoviesState) _then;
}

abstract class $InitialStateCopyWith<$Res> {
  factory $InitialStateCopyWith(
          InitialState value, $Res Function(InitialState) then) =
      _$InitialStateCopyWithImpl<$Res>;
}

class _$InitialStateCopyWithImpl<$Res>
    extends _$FavoritesmoviesStateCopyWithImpl<$Res>
    implements $InitialStateCopyWith<$Res> {
  _$InitialStateCopyWithImpl(
      InitialState _value, $Res Function(InitialState) _then)
      : super(_value, (v) => _then(v as InitialState));

  @override
  InitialState get _value => super._value as InitialState;
}

class _$InitialState implements InitialState {
  const _$InitialState();

  @override
  String toString() {
    return 'FavoritesmoviesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Movie> favoriteMovieList),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Movie> favoriteMovieList),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialState value),
    @required Result loaded(LoadedState value),
    @required Result error(ErrorState value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialState value),
    Result loaded(LoadedState value),
    Result error(ErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements FavoritesmoviesState {
  const factory InitialState() = _$InitialState;
}

abstract class $LoadedStateCopyWith<$Res> {
  factory $LoadedStateCopyWith(
          LoadedState value, $Res Function(LoadedState) then) =
      _$LoadedStateCopyWithImpl<$Res>;
  $Res call({List<Movie> favoriteMovieList});
}

class _$LoadedStateCopyWithImpl<$Res>
    extends _$FavoritesmoviesStateCopyWithImpl<$Res>
    implements $LoadedStateCopyWith<$Res> {
  _$LoadedStateCopyWithImpl(
      LoadedState _value, $Res Function(LoadedState) _then)
      : super(_value, (v) => _then(v as LoadedState));

  @override
  LoadedState get _value => super._value as LoadedState;

  @override
  $Res call({
    Object favoriteMovieList = freezed,
  }) {
    return _then(LoadedState(
      favoriteMovieList: favoriteMovieList == freezed
          ? _value.favoriteMovieList
          : favoriteMovieList as List<Movie>,
    ));
  }
}

class _$LoadedState implements LoadedState {
  const _$LoadedState({@required this.favoriteMovieList})
      : assert(favoriteMovieList != null);

  @override
  final List<Movie> favoriteMovieList;

  @override
  String toString() {
    return 'FavoritesmoviesState.loaded(favoriteMovieList: $favoriteMovieList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedState &&
            (identical(other.favoriteMovieList, favoriteMovieList) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteMovieList, favoriteMovieList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(favoriteMovieList);

  @override
  $LoadedStateCopyWith<LoadedState> get copyWith =>
      _$LoadedStateCopyWithImpl<LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Movie> favoriteMovieList),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(favoriteMovieList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Movie> favoriteMovieList),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(favoriteMovieList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialState value),
    @required Result loaded(LoadedState value),
    @required Result error(ErrorState value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialState value),
    Result loaded(LoadedState value),
    Result error(ErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements FavoritesmoviesState {
  const factory LoadedState({@required List<Movie> favoriteMovieList}) =
      _$LoadedState;

  List<Movie> get favoriteMovieList;
  $LoadedStateCopyWith<LoadedState> get copyWith;
}

abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res>;
}

class _$ErrorStateCopyWithImpl<$Res>
    extends _$FavoritesmoviesStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(ErrorState _value, $Res Function(ErrorState) _then)
      : super(_value, (v) => _then(v as ErrorState));

  @override
  ErrorState get _value => super._value as ErrorState;
}

class _$ErrorState implements ErrorState {
  const _$ErrorState();

  @override
  String toString() {
    return 'FavoritesmoviesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Movie> favoriteMovieList),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Movie> favoriteMovieList),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(InitialState value),
    @required Result loaded(LoadedState value),
    @required Result error(ErrorState value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(InitialState value),
    Result loaded(LoadedState value),
    Result error(ErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements FavoritesmoviesState {
  const factory ErrorState() = _$ErrorState;
}
