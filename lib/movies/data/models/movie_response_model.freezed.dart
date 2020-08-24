// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MovieResponseModel _$MovieResponseModelFromJson(Map<String, dynamic> json) {
  return _MovieResponseModel.fromJson(json);
}

class _$MovieResponseModelTearOff {
  const _$MovieResponseModelTearOff();

// ignore: unused_element
  _MovieResponseModel call(
      {@required List<MovieModel> results,
      @required int page,
      @required int totalResults,
      @required int totalPages}) {
    return _MovieResponseModel(
      results: results,
      page: page,
      totalResults: totalResults,
      totalPages: totalPages,
    );
  }
}

// ignore: unused_element
const $MovieResponseModel = _$MovieResponseModelTearOff();

mixin _$MovieResponseModel {
  List<MovieModel> get results;
  int get page;
  int get totalResults;
  int get totalPages;

  Map<String, dynamic> toJson();
  $MovieResponseModelCopyWith<MovieResponseModel> get copyWith;
}

abstract class $MovieResponseModelCopyWith<$Res> {
  factory $MovieResponseModelCopyWith(
          MovieResponseModel value, $Res Function(MovieResponseModel) then) =
      _$MovieResponseModelCopyWithImpl<$Res>;
  $Res call(
      {List<MovieModel> results, int page, int totalResults, int totalPages});
}

class _$MovieResponseModelCopyWithImpl<$Res>
    implements $MovieResponseModelCopyWith<$Res> {
  _$MovieResponseModelCopyWithImpl(this._value, this._then);

  final MovieResponseModel _value;
  // ignore: unused_field
  final $Res Function(MovieResponseModel) _then;

  @override
  $Res call({
    Object results = freezed,
    Object page = freezed,
    Object totalResults = freezed,
    Object totalPages = freezed,
  }) {
    return _then(_value.copyWith(
      results:
          results == freezed ? _value.results : results as List<MovieModel>,
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
    ));
  }
}

abstract class _$MovieResponseModelCopyWith<$Res>
    implements $MovieResponseModelCopyWith<$Res> {
  factory _$MovieResponseModelCopyWith(
          _MovieResponseModel value, $Res Function(_MovieResponseModel) then) =
      __$MovieResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<MovieModel> results, int page, int totalResults, int totalPages});
}

class __$MovieResponseModelCopyWithImpl<$Res>
    extends _$MovieResponseModelCopyWithImpl<$Res>
    implements _$MovieResponseModelCopyWith<$Res> {
  __$MovieResponseModelCopyWithImpl(
      _MovieResponseModel _value, $Res Function(_MovieResponseModel) _then)
      : super(_value, (v) => _then(v as _MovieResponseModel));

  @override
  _MovieResponseModel get _value => super._value as _MovieResponseModel;

  @override
  $Res call({
    Object results = freezed,
    Object page = freezed,
    Object totalResults = freezed,
    Object totalPages = freezed,
  }) {
    return _then(_MovieResponseModel(
      results:
          results == freezed ? _value.results : results as List<MovieModel>,
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
    ));
  }
}

@JsonSerializable(anyMap: true, fieldRename: FieldRename.snake)
class _$_MovieResponseModel extends _MovieResponseModel {
  const _$_MovieResponseModel(
      {@required this.results,
      @required this.page,
      @required this.totalResults,
      @required this.totalPages})
      : assert(results != null),
        assert(page != null),
        assert(totalResults != null),
        assert(totalPages != null),
        super._();

  factory _$_MovieResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieResponseModelFromJson(json);

  @override
  final List<MovieModel> results;
  @override
  final int page;
  @override
  final int totalResults;
  @override
  final int totalPages;

  @override
  String toString() {
    return 'MovieResponseModel(results: $results, page: $page, totalResults: $totalResults, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieResponseModel &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
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
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(totalResults) ^
      const DeepCollectionEquality().hash(totalPages);

  @override
  _$MovieResponseModelCopyWith<_MovieResponseModel> get copyWith =>
      __$MovieResponseModelCopyWithImpl<_MovieResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieResponseModelToJson(this);
  }
}

abstract class _MovieResponseModel extends MovieResponseModel {
  const _MovieResponseModel._() : super._();
  const factory _MovieResponseModel(
      {@required List<MovieModel> results,
      @required int page,
      @required int totalResults,
      @required int totalPages}) = _$_MovieResponseModel;

  factory _MovieResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MovieResponseModel.fromJson;

  @override
  List<MovieModel> get results;
  @override
  int get page;
  @override
  int get totalResults;
  @override
  int get totalPages;
  @override
  _$MovieResponseModelCopyWith<_MovieResponseModel> get copyWith;
}
