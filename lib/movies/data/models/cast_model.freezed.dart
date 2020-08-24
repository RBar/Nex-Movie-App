// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CastModel _$CastModelFromJson(Map<String, dynamic> json) {
  return _CastModel.fromJson(json);
}

class _$CastModelTearOff {
  const _$CastModelTearOff();

// ignore: unused_element
  _CastModel call(
      {@required int castId,
      @required @nullable String character,
      @required @nullable String creditId,
      @required @nullable int gender,
      @required int id,
      @required String name,
      @required @nullable int order,
      @required @nullable String profilePath}) {
    return _CastModel(
      castId: castId,
      character: character,
      creditId: creditId,
      gender: gender,
      id: id,
      name: name,
      order: order,
      profilePath: profilePath,
    );
  }
}

// ignore: unused_element
const $CastModel = _$CastModelTearOff();

mixin _$CastModel {
  int get castId;
  @nullable
  String get character;
  @nullable
  String get creditId;
  @nullable
  int get gender;
  int get id;
  String get name;
  @nullable
  int get order;
  @nullable
  String get profilePath;

  Map<String, dynamic> toJson();
  $CastModelCopyWith<CastModel> get copyWith;
}

abstract class $CastModelCopyWith<$Res> {
  factory $CastModelCopyWith(CastModel value, $Res Function(CastModel) then) =
      _$CastModelCopyWithImpl<$Res>;
  $Res call(
      {int castId,
      @nullable String character,
      @nullable String creditId,
      @nullable int gender,
      int id,
      String name,
      @nullable int order,
      @nullable String profilePath});
}

class _$CastModelCopyWithImpl<$Res> implements $CastModelCopyWith<$Res> {
  _$CastModelCopyWithImpl(this._value, this._then);

  final CastModel _value;
  // ignore: unused_field
  final $Res Function(CastModel) _then;

  @override
  $Res call({
    Object castId = freezed,
    Object character = freezed,
    Object creditId = freezed,
    Object gender = freezed,
    Object id = freezed,
    Object name = freezed,
    Object order = freezed,
    Object profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      castId: castId == freezed ? _value.castId : castId as int,
      character: character == freezed ? _value.character : character as String,
      creditId: creditId == freezed ? _value.creditId : creditId as String,
      gender: gender == freezed ? _value.gender : gender as int,
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      order: order == freezed ? _value.order : order as int,
      profilePath:
          profilePath == freezed ? _value.profilePath : profilePath as String,
    ));
  }
}

abstract class _$CastModelCopyWith<$Res> implements $CastModelCopyWith<$Res> {
  factory _$CastModelCopyWith(
          _CastModel value, $Res Function(_CastModel) then) =
      __$CastModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int castId,
      @nullable String character,
      @nullable String creditId,
      @nullable int gender,
      int id,
      String name,
      @nullable int order,
      @nullable String profilePath});
}

class __$CastModelCopyWithImpl<$Res> extends _$CastModelCopyWithImpl<$Res>
    implements _$CastModelCopyWith<$Res> {
  __$CastModelCopyWithImpl(_CastModel _value, $Res Function(_CastModel) _then)
      : super(_value, (v) => _then(v as _CastModel));

  @override
  _CastModel get _value => super._value as _CastModel;

  @override
  $Res call({
    Object castId = freezed,
    Object character = freezed,
    Object creditId = freezed,
    Object gender = freezed,
    Object id = freezed,
    Object name = freezed,
    Object order = freezed,
    Object profilePath = freezed,
  }) {
    return _then(_CastModel(
      castId: castId == freezed ? _value.castId : castId as int,
      character: character == freezed ? _value.character : character as String,
      creditId: creditId == freezed ? _value.creditId : creditId as String,
      gender: gender == freezed ? _value.gender : gender as int,
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      order: order == freezed ? _value.order : order as int,
      profilePath:
          profilePath == freezed ? _value.profilePath : profilePath as String,
    ));
  }
}

@JsonSerializable(anyMap: true, fieldRename: FieldRename.snake)
class _$_CastModel extends _CastModel {
  const _$_CastModel(
      {@required this.castId,
      @required @nullable this.character,
      @required @nullable this.creditId,
      @required @nullable this.gender,
      @required this.id,
      @required this.name,
      @required @nullable this.order,
      @required @nullable this.profilePath})
      : assert(castId != null),
        assert(id != null),
        assert(name != null),
        super._();

  factory _$_CastModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CastModelFromJson(json);

  @override
  final int castId;
  @override
  @nullable
  final String character;
  @override
  @nullable
  final String creditId;
  @override
  @nullable
  final int gender;
  @override
  final int id;
  @override
  final String name;
  @override
  @nullable
  final int order;
  @override
  @nullable
  final String profilePath;

  @override
  String toString() {
    return 'CastModel(castId: $castId, character: $character, creditId: $creditId, gender: $gender, id: $id, name: $name, order: $order, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CastModel &&
            (identical(other.castId, castId) ||
                const DeepCollectionEquality().equals(other.castId, castId)) &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)) &&
            (identical(other.creditId, creditId) ||
                const DeepCollectionEquality()
                    .equals(other.creditId, creditId)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.profilePath, profilePath) ||
                const DeepCollectionEquality()
                    .equals(other.profilePath, profilePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(castId) ^
      const DeepCollectionEquality().hash(character) ^
      const DeepCollectionEquality().hash(creditId) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(profilePath);

  @override
  _$CastModelCopyWith<_CastModel> get copyWith =>
      __$CastModelCopyWithImpl<_CastModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CastModelToJson(this);
  }
}

abstract class _CastModel extends CastModel {
  const _CastModel._() : super._();
  const factory _CastModel(
      {@required int castId,
      @required @nullable String character,
      @required @nullable String creditId,
      @required @nullable int gender,
      @required int id,
      @required String name,
      @required @nullable int order,
      @required @nullable String profilePath}) = _$_CastModel;

  factory _CastModel.fromJson(Map<String, dynamic> json) =
      _$_CastModel.fromJson;

  @override
  int get castId;
  @override
  @nullable
  String get character;
  @override
  @nullable
  String get creditId;
  @override
  @nullable
  int get gender;
  @override
  int get id;
  @override
  String get name;
  @override
  @nullable
  int get order;
  @override
  @nullable
  String get profilePath;
  @override
  _$CastModelCopyWith<_CastModel> get copyWith;
}

CastResponseModel _$CastResponseModelFromJson(Map<String, dynamic> json) {
  return _CastResponseModel.fromJson(json);
}

class _$CastResponseModelTearOff {
  const _$CastResponseModelTearOff();

// ignore: unused_element
  _CastResponseModel call({@required List<CastModel> cast}) {
    return _CastResponseModel(
      cast: cast,
    );
  }
}

// ignore: unused_element
const $CastResponseModel = _$CastResponseModelTearOff();

mixin _$CastResponseModel {
  List<CastModel> get cast;

  Map<String, dynamic> toJson();
  $CastResponseModelCopyWith<CastResponseModel> get copyWith;
}

abstract class $CastResponseModelCopyWith<$Res> {
  factory $CastResponseModelCopyWith(
          CastResponseModel value, $Res Function(CastResponseModel) then) =
      _$CastResponseModelCopyWithImpl<$Res>;
  $Res call({List<CastModel> cast});
}

class _$CastResponseModelCopyWithImpl<$Res>
    implements $CastResponseModelCopyWith<$Res> {
  _$CastResponseModelCopyWithImpl(this._value, this._then);

  final CastResponseModel _value;
  // ignore: unused_field
  final $Res Function(CastResponseModel) _then;

  @override
  $Res call({
    Object cast = freezed,
  }) {
    return _then(_value.copyWith(
      cast: cast == freezed ? _value.cast : cast as List<CastModel>,
    ));
  }
}

abstract class _$CastResponseModelCopyWith<$Res>
    implements $CastResponseModelCopyWith<$Res> {
  factory _$CastResponseModelCopyWith(
          _CastResponseModel value, $Res Function(_CastResponseModel) then) =
      __$CastResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({List<CastModel> cast});
}

class __$CastResponseModelCopyWithImpl<$Res>
    extends _$CastResponseModelCopyWithImpl<$Res>
    implements _$CastResponseModelCopyWith<$Res> {
  __$CastResponseModelCopyWithImpl(
      _CastResponseModel _value, $Res Function(_CastResponseModel) _then)
      : super(_value, (v) => _then(v as _CastResponseModel));

  @override
  _CastResponseModel get _value => super._value as _CastResponseModel;

  @override
  $Res call({
    Object cast = freezed,
  }) {
    return _then(_CastResponseModel(
      cast: cast == freezed ? _value.cast : cast as List<CastModel>,
    ));
  }
}

@JsonSerializable()
class _$_CastResponseModel extends _CastResponseModel {
  const _$_CastResponseModel({@required this.cast})
      : assert(cast != null),
        super._();

  factory _$_CastResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CastResponseModelFromJson(json);

  @override
  final List<CastModel> cast;

  @override
  String toString() {
    return 'CastResponseModel(cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CastResponseModel &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cast);

  @override
  _$CastResponseModelCopyWith<_CastResponseModel> get copyWith =>
      __$CastResponseModelCopyWithImpl<_CastResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CastResponseModelToJson(this);
  }
}

abstract class _CastResponseModel extends CastResponseModel {
  const _CastResponseModel._() : super._();
  const factory _CastResponseModel({@required List<CastModel> cast}) =
      _$_CastResponseModel;

  factory _CastResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CastResponseModel.fromJson;

  @override
  List<CastModel> get cast;
  @override
  _$CastResponseModelCopyWith<_CastResponseModel> get copyWith;
}
