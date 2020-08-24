// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'genre_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GenreModelTearOff {
  const _$GenreModelTearOff();

// ignore: unused_element
  _GenreModel call({@required String name, @required int id}) {
    return _GenreModel(
      name: name,
      id: id,
    );
  }
}

// ignore: unused_element
const $GenreModel = _$GenreModelTearOff();

mixin _$GenreModel {
  String get name;
  int get id;

  $GenreModelCopyWith<GenreModel> get copyWith;
}

abstract class $GenreModelCopyWith<$Res> {
  factory $GenreModelCopyWith(
          GenreModel value, $Res Function(GenreModel) then) =
      _$GenreModelCopyWithImpl<$Res>;
  $Res call({String name, int id});
}

class _$GenreModelCopyWithImpl<$Res> implements $GenreModelCopyWith<$Res> {
  _$GenreModelCopyWithImpl(this._value, this._then);

  final GenreModel _value;
  // ignore: unused_field
  final $Res Function(GenreModel) _then;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

abstract class _$GenreModelCopyWith<$Res> implements $GenreModelCopyWith<$Res> {
  factory _$GenreModelCopyWith(
          _GenreModel value, $Res Function(_GenreModel) then) =
      __$GenreModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, int id});
}

class __$GenreModelCopyWithImpl<$Res> extends _$GenreModelCopyWithImpl<$Res>
    implements _$GenreModelCopyWith<$Res> {
  __$GenreModelCopyWithImpl(
      _GenreModel _value, $Res Function(_GenreModel) _then)
      : super(_value, (v) => _then(v as _GenreModel));

  @override
  _GenreModel get _value => super._value as _GenreModel;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
  }) {
    return _then(_GenreModel(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

@JsonSerializable(anyMap: true, fieldRename: FieldRename.snake)
class _$_GenreModel extends _GenreModel {
  const _$_GenreModel({@required this.name, @required this.id})
      : assert(name != null),
        assert(id != null),
        super._();

  @override
  final String name;
  @override
  final int id;

  @override
  String toString() {
    return 'GenreModel(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenreModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id);

  @override
  _$GenreModelCopyWith<_GenreModel> get copyWith =>
      __$GenreModelCopyWithImpl<_GenreModel>(this, _$identity);
}

abstract class _GenreModel extends GenreModel {
  const _GenreModel._() : super._();
  const factory _GenreModel({@required String name, @required int id}) =
      _$_GenreModel;

  @override
  String get name;
  @override
  int get id;
  @override
  _$GenreModelCopyWith<_GenreModel> get copyWith;
}
