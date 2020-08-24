// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cast_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CastTearOff {
  const _$CastTearOff();

// ignore: unused_element
  _Cast call(
      {@required int castId,
      @required @nullable String character,
      @required @nullable String creditId,
      @required @nullable int gender,
      @required int id,
      @required String name,
      @required @nullable int order,
      @required @nullable String profilePath}) {
    return _Cast(
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
const $Cast = _$CastTearOff();

mixin _$Cast {
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

  $CastCopyWith<Cast> get copyWith;
}

abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res>;
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

class _$CastCopyWithImpl<$Res> implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  final Cast _value;
  // ignore: unused_field
  final $Res Function(Cast) _then;

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

abstract class _$CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$CastCopyWith(_Cast value, $Res Function(_Cast) then) =
      __$CastCopyWithImpl<$Res>;
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

class __$CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res>
    implements _$CastCopyWith<$Res> {
  __$CastCopyWithImpl(_Cast _value, $Res Function(_Cast) _then)
      : super(_value, (v) => _then(v as _Cast));

  @override
  _Cast get _value => super._value as _Cast;

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
    return _then(_Cast(
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

class _$_Cast implements _Cast {
  const _$_Cast(
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
        assert(name != null);

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
    return 'Cast(castId: $castId, character: $character, creditId: $creditId, gender: $gender, id: $id, name: $name, order: $order, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cast &&
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
  _$CastCopyWith<_Cast> get copyWith =>
      __$CastCopyWithImpl<_Cast>(this, _$identity);
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {@required int castId,
      @required @nullable String character,
      @required @nullable String creditId,
      @required @nullable int gender,
      @required int id,
      @required String name,
      @required @nullable int order,
      @required @nullable String profilePath}) = _$_Cast;

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
  _$CastCopyWith<_Cast> get copyWith;
}

class _$CastResponseTearOff {
  const _$CastResponseTearOff();

// ignore: unused_element
  _CastResponse call({@required List<Cast> castList}) {
    return _CastResponse(
      castList: castList,
    );
  }
}

// ignore: unused_element
const $CastResponse = _$CastResponseTearOff();

mixin _$CastResponse {
  List<Cast> get castList;

  $CastResponseCopyWith<CastResponse> get copyWith;
}

abstract class $CastResponseCopyWith<$Res> {
  factory $CastResponseCopyWith(
          CastResponse value, $Res Function(CastResponse) then) =
      _$CastResponseCopyWithImpl<$Res>;
  $Res call({List<Cast> castList});
}

class _$CastResponseCopyWithImpl<$Res> implements $CastResponseCopyWith<$Res> {
  _$CastResponseCopyWithImpl(this._value, this._then);

  final CastResponse _value;
  // ignore: unused_field
  final $Res Function(CastResponse) _then;

  @override
  $Res call({
    Object castList = freezed,
  }) {
    return _then(_value.copyWith(
      castList: castList == freezed ? _value.castList : castList as List<Cast>,
    ));
  }
}

abstract class _$CastResponseCopyWith<$Res>
    implements $CastResponseCopyWith<$Res> {
  factory _$CastResponseCopyWith(
          _CastResponse value, $Res Function(_CastResponse) then) =
      __$CastResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Cast> castList});
}

class __$CastResponseCopyWithImpl<$Res> extends _$CastResponseCopyWithImpl<$Res>
    implements _$CastResponseCopyWith<$Res> {
  __$CastResponseCopyWithImpl(
      _CastResponse _value, $Res Function(_CastResponse) _then)
      : super(_value, (v) => _then(v as _CastResponse));

  @override
  _CastResponse get _value => super._value as _CastResponse;

  @override
  $Res call({
    Object castList = freezed,
  }) {
    return _then(_CastResponse(
      castList: castList == freezed ? _value.castList : castList as List<Cast>,
    ));
  }
}

class _$_CastResponse implements _CastResponse {
  const _$_CastResponse({@required this.castList}) : assert(castList != null);

  @override
  final List<Cast> castList;

  @override
  String toString() {
    return 'CastResponse(castList: $castList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CastResponse &&
            (identical(other.castList, castList) ||
                const DeepCollectionEquality()
                    .equals(other.castList, castList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(castList);

  @override
  _$CastResponseCopyWith<_CastResponse> get copyWith =>
      __$CastResponseCopyWithImpl<_CastResponse>(this, _$identity);
}

abstract class _CastResponse implements CastResponse {
  const factory _CastResponse({@required List<Cast> castList}) =
      _$_CastResponse;

  @override
  List<Cast> get castList;
  @override
  _$CastResponseCopyWith<_CastResponse> get copyWith;
}
