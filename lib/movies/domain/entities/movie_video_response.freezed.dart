// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_video_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MovieVideoResponseTearOff {
  const _$MovieVideoResponseTearOff();

// ignore: unused_element
  _MovieVideoResponse call(
      {@required String id, @required String key, @required String name}) {
    return _MovieVideoResponse(
      id: id,
      key: key,
      name: name,
    );
  }
}

// ignore: unused_element
const $MovieVideoResponse = _$MovieVideoResponseTearOff();

mixin _$MovieVideoResponse {
  String get id;
  String get key;
  String get name;

  $MovieVideoResponseCopyWith<MovieVideoResponse> get copyWith;
}

abstract class $MovieVideoResponseCopyWith<$Res> {
  factory $MovieVideoResponseCopyWith(
          MovieVideoResponse value, $Res Function(MovieVideoResponse) then) =
      _$MovieVideoResponseCopyWithImpl<$Res>;
  $Res call({String id, String key, String name});
}

class _$MovieVideoResponseCopyWithImpl<$Res>
    implements $MovieVideoResponseCopyWith<$Res> {
  _$MovieVideoResponseCopyWithImpl(this._value, this._then);

  final MovieVideoResponse _value;
  // ignore: unused_field
  final $Res Function(MovieVideoResponse) _then;

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

abstract class _$MovieVideoResponseCopyWith<$Res>
    implements $MovieVideoResponseCopyWith<$Res> {
  factory _$MovieVideoResponseCopyWith(
          _MovieVideoResponse value, $Res Function(_MovieVideoResponse) then) =
      __$MovieVideoResponseCopyWithImpl<$Res>;
  @override
  $Res call({String id, String key, String name});
}

class __$MovieVideoResponseCopyWithImpl<$Res>
    extends _$MovieVideoResponseCopyWithImpl<$Res>
    implements _$MovieVideoResponseCopyWith<$Res> {
  __$MovieVideoResponseCopyWithImpl(
      _MovieVideoResponse _value, $Res Function(_MovieVideoResponse) _then)
      : super(_value, (v) => _then(v as _MovieVideoResponse));

  @override
  _MovieVideoResponse get _value => super._value as _MovieVideoResponse;

  @override
  $Res call({
    Object id = freezed,
    Object key = freezed,
    Object name = freezed,
  }) {
    return _then(_MovieVideoResponse(
      id: id == freezed ? _value.id : id as String,
      key: key == freezed ? _value.key : key as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_MovieVideoResponse implements _MovieVideoResponse {
  const _$_MovieVideoResponse(
      {@required this.id, @required this.key, @required this.name})
      : assert(id != null),
        assert(key != null),
        assert(name != null);

  @override
  final String id;
  @override
  final String key;
  @override
  final String name;

  @override
  String toString() {
    return 'MovieVideoResponse(id: $id, key: $key, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieVideoResponse &&
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
  _$MovieVideoResponseCopyWith<_MovieVideoResponse> get copyWith =>
      __$MovieVideoResponseCopyWithImpl<_MovieVideoResponse>(this, _$identity);
}

abstract class _MovieVideoResponse implements MovieVideoResponse {
  const factory _MovieVideoResponse(
      {@required String id,
      @required String key,
      @required String name}) = _$_MovieVideoResponse;

  @override
  String get id;
  @override
  String get key;
  @override
  String get name;
  @override
  _$MovieVideoResponseCopyWith<_MovieVideoResponse> get copyWith;
}
