// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

class _$MovieModelTearOff {
  const _$MovieModelTearOff();

// ignore: unused_element
  _MovieModel call(
      {@required @nullable double popularity,
      @required @nullable int voteCount,
      @required @nullable bool video,
      @required @nullable String posterPath,
      @required int id,
      @required bool adult,
      @required @nullable String backdropPath,
      @required @nullable String originalLanguage,
      @required String originalTitle,
      @required @nullable List<int> genreIds,
      @required @nullable String title,
      @required @nullable double voteAverage,
      @required @nullable String overview,
      @required @nullable String releaseDate}) {
    return _MovieModel(
      popularity: popularity,
      voteCount: voteCount,
      video: video,
      posterPath: posterPath,
      id: id,
      adult: adult,
      backdropPath: backdropPath,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      genreIds: genreIds,
      title: title,
      voteAverage: voteAverage,
      overview: overview,
      releaseDate: releaseDate,
    );
  }
}

// ignore: unused_element
const $MovieModel = _$MovieModelTearOff();

mixin _$MovieModel {
  @nullable
  double get popularity;
  @nullable
  int get voteCount;
  @nullable
  bool get video;
  @nullable
  String get posterPath;
  int get id;
  bool get adult;
  @nullable
  String get backdropPath;
  @nullable
  String get originalLanguage;
  String get originalTitle;
  @nullable
  List<int> get genreIds;
  @nullable
  String get title;
  @nullable
  double get voteAverage;
  @nullable
  String get overview;
  @nullable
  String get releaseDate;

  Map<String, dynamic> toJson();
  $MovieModelCopyWith<MovieModel> get copyWith;
}

abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable double popularity,
      @nullable int voteCount,
      @nullable bool video,
      @nullable String posterPath,
      int id,
      bool adult,
      @nullable String backdropPath,
      @nullable String originalLanguage,
      String originalTitle,
      @nullable List<int> genreIds,
      @nullable String title,
      @nullable double voteAverage,
      @nullable String overview,
      @nullable String releaseDate});
}

class _$MovieModelCopyWithImpl<$Res> implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  final MovieModel _value;
  // ignore: unused_field
  final $Res Function(MovieModel) _then;

  @override
  $Res call({
    Object popularity = freezed,
    Object voteCount = freezed,
    Object video = freezed,
    Object posterPath = freezed,
    Object id = freezed,
    Object adult = freezed,
    Object backdropPath = freezed,
    Object originalLanguage = freezed,
    Object originalTitle = freezed,
    Object genreIds = freezed,
    Object title = freezed,
    Object voteAverage = freezed,
    Object overview = freezed,
    Object releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      video: video == freezed ? _value.video : video as bool,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      id: id == freezed ? _value.id : id as int,
      adult: adult == freezed ? _value.adult : adult as bool,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle as String,
      genreIds: genreIds == freezed ? _value.genreIds : genreIds as List<int>,
      title: title == freezed ? _value.title : title as String,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
      overview: overview == freezed ? _value.overview : overview as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as String,
    ));
  }
}

abstract class _$MovieModelCopyWith<$Res> implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(
          _MovieModel value, $Res Function(_MovieModel) then) =
      __$MovieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable double popularity,
      @nullable int voteCount,
      @nullable bool video,
      @nullable String posterPath,
      int id,
      bool adult,
      @nullable String backdropPath,
      @nullable String originalLanguage,
      String originalTitle,
      @nullable List<int> genreIds,
      @nullable String title,
      @nullable double voteAverage,
      @nullable String overview,
      @nullable String releaseDate});
}

class __$MovieModelCopyWithImpl<$Res> extends _$MovieModelCopyWithImpl<$Res>
    implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(
      _MovieModel _value, $Res Function(_MovieModel) _then)
      : super(_value, (v) => _then(v as _MovieModel));

  @override
  _MovieModel get _value => super._value as _MovieModel;

  @override
  $Res call({
    Object popularity = freezed,
    Object voteCount = freezed,
    Object video = freezed,
    Object posterPath = freezed,
    Object id = freezed,
    Object adult = freezed,
    Object backdropPath = freezed,
    Object originalLanguage = freezed,
    Object originalTitle = freezed,
    Object genreIds = freezed,
    Object title = freezed,
    Object voteAverage = freezed,
    Object overview = freezed,
    Object releaseDate = freezed,
  }) {
    return _then(_MovieModel(
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      video: video == freezed ? _value.video : video as bool,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      id: id == freezed ? _value.id : id as int,
      adult: adult == freezed ? _value.adult : adult as bool,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle as String,
      genreIds: genreIds == freezed ? _value.genreIds : genreIds as List<int>,
      title: title == freezed ? _value.title : title as String,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
      overview: overview == freezed ? _value.overview : overview as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as String,
    ));
  }
}

@JsonSerializable(anyMap: true, fieldRename: FieldRename.snake)
class _$_MovieModel extends _MovieModel {
  const _$_MovieModel(
      {@required @nullable this.popularity,
      @required @nullable this.voteCount,
      @required @nullable this.video,
      @required @nullable this.posterPath,
      @required this.id,
      @required this.adult,
      @required @nullable this.backdropPath,
      @required @nullable this.originalLanguage,
      @required this.originalTitle,
      @required @nullable this.genreIds,
      @required @nullable this.title,
      @required @nullable this.voteAverage,
      @required @nullable this.overview,
      @required @nullable this.releaseDate})
      : assert(id != null),
        assert(adult != null),
        assert(originalTitle != null),
        super._();

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieModelFromJson(json);

  @override
  @nullable
  final double popularity;
  @override
  @nullable
  final int voteCount;
  @override
  @nullable
  final bool video;
  @override
  @nullable
  final String posterPath;
  @override
  final int id;
  @override
  final bool adult;
  @override
  @nullable
  final String backdropPath;
  @override
  @nullable
  final String originalLanguage;
  @override
  final String originalTitle;
  @override
  @nullable
  final List<int> genreIds;
  @override
  @nullable
  final String title;
  @override
  @nullable
  final double voteAverage;
  @override
  @nullable
  final String overview;
  @override
  @nullable
  final String releaseDate;

  @override
  String toString() {
    return 'MovieModel(popularity: $popularity, voteCount: $voteCount, video: $video, posterPath: $posterPath, id: $id, adult: $adult, backdropPath: $backdropPath, originalLanguage: $originalLanguage, originalTitle: $originalTitle, genreIds: $genreIds, title: $title, voteAverage: $voteAverage, overview: $overview, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieModel &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.voteCount, voteCount) ||
                const DeepCollectionEquality()
                    .equals(other.voteCount, voteCount)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.adult, adult) ||
                const DeepCollectionEquality().equals(other.adult, adult)) &&
            (identical(other.backdropPath, backdropPath) ||
                const DeepCollectionEquality()
                    .equals(other.backdropPath, backdropPath)) &&
            (identical(other.originalLanguage, originalLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.originalLanguage, originalLanguage)) &&
            (identical(other.originalTitle, originalTitle) ||
                const DeepCollectionEquality()
                    .equals(other.originalTitle, originalTitle)) &&
            (identical(other.genreIds, genreIds) ||
                const DeepCollectionEquality()
                    .equals(other.genreIds, genreIds)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.voteAverage, voteAverage) ||
                const DeepCollectionEquality()
                    .equals(other.voteAverage, voteAverage)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(voteCount) ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(posterPath) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(adult) ^
      const DeepCollectionEquality().hash(backdropPath) ^
      const DeepCollectionEquality().hash(originalLanguage) ^
      const DeepCollectionEquality().hash(originalTitle) ^
      const DeepCollectionEquality().hash(genreIds) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(voteAverage) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(releaseDate);

  @override
  _$MovieModelCopyWith<_MovieModel> get copyWith =>
      __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieModelToJson(this);
  }
}

abstract class _MovieModel extends MovieModel {
  const _MovieModel._() : super._();
  const factory _MovieModel(
      {@required @nullable double popularity,
      @required @nullable int voteCount,
      @required @nullable bool video,
      @required @nullable String posterPath,
      @required int id,
      @required bool adult,
      @required @nullable String backdropPath,
      @required @nullable String originalLanguage,
      @required String originalTitle,
      @required @nullable List<int> genreIds,
      @required @nullable String title,
      @required @nullable double voteAverage,
      @required @nullable String overview,
      @required @nullable String releaseDate}) = _$_MovieModel;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  @nullable
  double get popularity;
  @override
  @nullable
  int get voteCount;
  @override
  @nullable
  bool get video;
  @override
  @nullable
  String get posterPath;
  @override
  int get id;
  @override
  bool get adult;
  @override
  @nullable
  String get backdropPath;
  @override
  @nullable
  String get originalLanguage;
  @override
  String get originalTitle;
  @override
  @nullable
  List<int> get genreIds;
  @override
  @nullable
  String get title;
  @override
  @nullable
  double get voteAverage;
  @override
  @nullable
  String get overview;
  @override
  @nullable
  String get releaseDate;
  @override
  _$MovieModelCopyWith<_MovieModel> get copyWith;
}

MovieVideoResponseModel _$MovieVideoResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MovieVideoResponseModel.fromJson(json);
}

class _$MovieVideoResponseModelTearOff {
  const _$MovieVideoResponseModelTearOff();

// ignore: unused_element
  _MovieVideoResponseModel call(
      {@required String id, @required String key, @required String name}) {
    return _MovieVideoResponseModel(
      id: id,
      key: key,
      name: name,
    );
  }
}

// ignore: unused_element
const $MovieVideoResponseModel = _$MovieVideoResponseModelTearOff();

mixin _$MovieVideoResponseModel {
  String get id;
  String get key;
  String get name;

  Map<String, dynamic> toJson();
  $MovieVideoResponseModelCopyWith<MovieVideoResponseModel> get copyWith;
}

abstract class $MovieVideoResponseModelCopyWith<$Res> {
  factory $MovieVideoResponseModelCopyWith(MovieVideoResponseModel value,
          $Res Function(MovieVideoResponseModel) then) =
      _$MovieVideoResponseModelCopyWithImpl<$Res>;
  $Res call({String id, String key, String name});
}

class _$MovieVideoResponseModelCopyWithImpl<$Res>
    implements $MovieVideoResponseModelCopyWith<$Res> {
  _$MovieVideoResponseModelCopyWithImpl(this._value, this._then);

  final MovieVideoResponseModel _value;
  // ignore: unused_field
  final $Res Function(MovieVideoResponseModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object key = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      key: key == freezed ? _value.key : key as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$MovieVideoResponseModelCopyWith<$Res>
    implements $MovieVideoResponseModelCopyWith<$Res> {
  factory _$MovieVideoResponseModelCopyWith(_MovieVideoResponseModel value,
          $Res Function(_MovieVideoResponseModel) then) =
      __$MovieVideoResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String key, String name});
}

class __$MovieVideoResponseModelCopyWithImpl<$Res>
    extends _$MovieVideoResponseModelCopyWithImpl<$Res>
    implements _$MovieVideoResponseModelCopyWith<$Res> {
  __$MovieVideoResponseModelCopyWithImpl(_MovieVideoResponseModel _value,
      $Res Function(_MovieVideoResponseModel) _then)
      : super(_value, (v) => _then(v as _MovieVideoResponseModel));

  @override
  _MovieVideoResponseModel get _value =>
      super._value as _MovieVideoResponseModel;

  @override
  $Res call({
    Object id = freezed,
    Object key = freezed,
    Object name = freezed,
  }) {
    return _then(_MovieVideoResponseModel(
      id: id == freezed ? _value.id : id as String,
      key: key == freezed ? _value.key : key as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_MovieVideoResponseModel extends _MovieVideoResponseModel {
  const _$_MovieVideoResponseModel(
      {@required this.id, @required this.key, @required this.name})
      : assert(id != null),
        assert(key != null),
        assert(name != null),
        super._();

  factory _$_MovieVideoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieVideoResponseModelFromJson(json);

  @override
  final String id;
  @override
  final String key;
  @override
  final String name;

  @override
  String toString() {
    return 'MovieVideoResponseModel(id: $id, key: $key, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieVideoResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$MovieVideoResponseModelCopyWith<_MovieVideoResponseModel> get copyWith =>
      __$MovieVideoResponseModelCopyWithImpl<_MovieVideoResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieVideoResponseModelToJson(this);
  }
}

abstract class _MovieVideoResponseModel extends MovieVideoResponseModel {
  const _MovieVideoResponseModel._() : super._();
  const factory _MovieVideoResponseModel(
      {@required String id,
      @required String key,
      @required String name}) = _$_MovieVideoResponseModel;

  factory _MovieVideoResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MovieVideoResponseModel.fromJson;

  @override
  String get id;
  @override
  String get key;
  @override
  String get name;
  @override
  _$MovieVideoResponseModelCopyWith<_MovieVideoResponseModel> get copyWith;
}
