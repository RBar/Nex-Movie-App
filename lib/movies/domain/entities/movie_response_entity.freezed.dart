// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MovieResponseTearOff {
  const _$MovieResponseTearOff();

// ignore: unused_element
  _MovieResponse call(
      {@required List<Movie> movieList,
      @required int page,
      @required int totalResults,
      @required int totalPages}) {
    return _MovieResponse(
      movieList: movieList,
      page: page,
      totalResults: totalResults,
      totalPages: totalPages,
    );
  }
}

// ignore: unused_element
const $MovieResponse = _$MovieResponseTearOff();

mixin _$MovieResponse {
  List<Movie> get movieList;
  int get page;
  int get totalResults;
  int get totalPages;

  $MovieResponseCopyWith<MovieResponse> get copyWith;
}

abstract class $MovieResponseCopyWith<$Res> {
  factory $MovieResponseCopyWith(
          MovieResponse value, $Res Function(MovieResponse) then) =
      _$MovieResponseCopyWithImpl<$Res>;
  $Res call(
      {List<Movie> movieList, int page, int totalResults, int totalPages});
}

class _$MovieResponseCopyWithImpl<$Res>
    implements $MovieResponseCopyWith<$Res> {
  _$MovieResponseCopyWithImpl(this._value, this._then);

  final MovieResponse _value;
  // ignore: unused_field
  final $Res Function(MovieResponse) _then;

  @override
  $Res call({
    Object movieList = freezed,
    Object page = freezed,
    Object totalResults = freezed,
    Object totalPages = freezed,
  }) {
    return _then(_value.copyWith(
      movieList:
          movieList == freezed ? _value.movieList : movieList as List<Movie>,
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
    ));
  }
}

abstract class _$MovieResponseCopyWith<$Res>
    implements $MovieResponseCopyWith<$Res> {
  factory _$MovieResponseCopyWith(
          _MovieResponse value, $Res Function(_MovieResponse) then) =
      __$MovieResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Movie> movieList, int page, int totalResults, int totalPages});
}

class __$MovieResponseCopyWithImpl<$Res>
    extends _$MovieResponseCopyWithImpl<$Res>
    implements _$MovieResponseCopyWith<$Res> {
  __$MovieResponseCopyWithImpl(
      _MovieResponse _value, $Res Function(_MovieResponse) _then)
      : super(_value, (v) => _then(v as _MovieResponse));

  @override
  _MovieResponse get _value => super._value as _MovieResponse;

  @override
  $Res call({
    Object movieList = freezed,
    Object page = freezed,
    Object totalResults = freezed,
    Object totalPages = freezed,
  }) {
    return _then(_MovieResponse(
      movieList:
          movieList == freezed ? _value.movieList : movieList as List<Movie>,
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
    ));
  }
}

class _$_MovieResponse implements _MovieResponse {
  const _$_MovieResponse(
      {@required this.movieList,
      @required this.page,
      @required this.totalResults,
      @required this.totalPages})
      : assert(movieList != null),
        assert(page != null),
        assert(totalResults != null),
        assert(totalPages != null);

  @override
  final List<Movie> movieList;
  @override
  final int page;
  @override
  final int totalResults;
  @override
  final int totalPages;

  @override
  String toString() {
    return 'MovieResponse(movieList: $movieList, page: $page, totalResults: $totalResults, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieResponse &&
            (identical(other.movieList, movieList) ||
                const DeepCollectionEquality()
                    .equals(other.movieList, movieList)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.totalResults, totalResults) ||
                const DeepCollectionEquality()
                    .equals(other.totalResults, totalResults)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(movieList) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(totalResults) ^
      const DeepCollectionEquality().hash(totalPages);

  @override
  _$MovieResponseCopyWith<_MovieResponse> get copyWith =>
      __$MovieResponseCopyWithImpl<_MovieResponse>(this, _$identity);
}

abstract class _MovieResponse implements MovieResponse {
  const factory _MovieResponse(
      {@required List<Movie> movieList,
      @required int page,
      @required int totalResults,
      @required int totalPages}) = _$_MovieResponse;

  @override
  List<Movie> get movieList;
  @override
  int get page;
  @override
  int get totalResults;
  @override
  int get totalPages;
  @override
  _$MovieResponseCopyWith<_MovieResponse> get copyWith;
}
