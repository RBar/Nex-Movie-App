// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required UniqueId id,
      @required @nullable String photoUrl,
      @required String emailAddress,
      @required @nullable String name}) {
    return _User(
      id: id,
      photoUrl: photoUrl,
      emailAddress: emailAddress,
      name: name,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  UniqueId get id;
  @nullable
  String get photoUrl;
  String get emailAddress;
  @nullable
  String get name;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      @nullable String photoUrl,
      String emailAddress,
      @nullable String name});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object photoUrl = freezed,
    Object emailAddress = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      @nullable String photoUrl,
      String emailAddress,
      @nullable String name});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object photoUrl = freezed,
    Object emailAddress = freezed,
    Object name = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_User implements _User {
  const _$_User(
      {@required this.id,
      @required @nullable this.photoUrl,
      @required this.emailAddress,
      @required @nullable this.name})
      : assert(id != null),
        assert(emailAddress != null);

  @override
  final UniqueId id;
  @override
  @nullable
  final String photoUrl;
  @override
  final String emailAddress;
  @override
  @nullable
  final String name;

  @override
  String toString() {
    return 'User(id: $id, photoUrl: $photoUrl, emailAddress: $emailAddress, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required UniqueId id,
      @required @nullable String photoUrl,
      @required String emailAddress,
      @required @nullable String name}) = _$_User;

  @override
  UniqueId get id;
  @override
  @nullable
  String get photoUrl;
  @override
  String get emailAddress;
  @override
  @nullable
  String get name;
  @override
  _$UserCopyWith<_User> get copyWith;
}
