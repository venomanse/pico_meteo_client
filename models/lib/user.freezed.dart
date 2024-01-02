// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool get emailVisibility => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      DateTime created,
      DateTime updated,
      String avatar,
      String? email,
      bool emailVisibility,
      String name,
      String username,
      bool verified});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? avatar = null,
    Object? email = freezed,
    Object? emailVisibility = null,
    Object? name = null,
    Object? username = null,
    Object? verified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVisibility: null == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime created,
      DateTime updated,
      String avatar,
      String? email,
      bool emailVisibility,
      String name,
      String username,
      bool verified});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? avatar = null,
    Object? email = freezed,
    Object? emailVisibility = null,
    Object? name = null,
    Object? username = null,
    Object? verified = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVisibility: null == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {required this.id,
      required this.created,
      required this.updated,
      required this.avatar,
      required this.email,
      required this.emailVisibility,
      required this.name,
      required this.username,
      required this.verified});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime created;
  @override
  final DateTime updated;
  @override
  final String avatar;
  @override
  final String? email;
  @override
  final bool emailVisibility;
  @override
  final String name;
  @override
  final String username;
  @override
  final bool verified;

  @override
  String toString() {
    return 'User(id: $id, created: $created, updated: $updated, avatar: $avatar, email: $email, emailVisibility: $emailVisibility, name: $name, username: $username, verified: $verified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVisibility, emailVisibility) ||
                other.emailVisibility == emailVisibility) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, created, updated, avatar,
      email, emailVisibility, name, username, verified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {required final String id,
      required final DateTime created,
      required final DateTime updated,
      required final String avatar,
      required final String? email,
      required final bool emailVisibility,
      required final String name,
      required final String username,
      required final bool verified}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get created;
  @override
  DateTime get updated;
  @override
  String get avatar;
  @override
  String? get email;
  @override
  bool get emailVisibility;
  @override
  String get name;
  @override
  String get username;
  @override
  bool get verified;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
