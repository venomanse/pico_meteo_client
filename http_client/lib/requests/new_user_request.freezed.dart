// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewUserRequest _$NewUserRequestFromJson(Map<String, dynamic> json) {
  return _NewUserRequest.fromJson(json);
}

/// @nodoc
mixin _$NewUserRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewUserRequestCopyWith<NewUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewUserRequestCopyWith<$Res> {
  factory $NewUserRequestCopyWith(
          NewUserRequest value, $Res Function(NewUserRequest) then) =
      _$NewUserRequestCopyWithImpl<$Res, NewUserRequest>;
  @useResult
  $Res call({String email, String password, String passwordConfirm});
}

/// @nodoc
class _$NewUserRequestCopyWithImpl<$Res, $Val extends NewUserRequest>
    implements $NewUserRequestCopyWith<$Res> {
  _$NewUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? passwordConfirm = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewUserRequestImplCopyWith<$Res>
    implements $NewUserRequestCopyWith<$Res> {
  factory _$$NewUserRequestImplCopyWith(_$NewUserRequestImpl value,
          $Res Function(_$NewUserRequestImpl) then) =
      __$$NewUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String passwordConfirm});
}

/// @nodoc
class __$$NewUserRequestImplCopyWithImpl<$Res>
    extends _$NewUserRequestCopyWithImpl<$Res, _$NewUserRequestImpl>
    implements _$$NewUserRequestImplCopyWith<$Res> {
  __$$NewUserRequestImplCopyWithImpl(
      _$NewUserRequestImpl _value, $Res Function(_$NewUserRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? passwordConfirm = null,
  }) {
    return _then(_$NewUserRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewUserRequestImpl implements _NewUserRequest {
  _$NewUserRequestImpl(
      {required this.email,
      required this.password,
      required this.passwordConfirm});

  factory _$NewUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewUserRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String passwordConfirm;

  @override
  String toString() {
    return 'NewUserRequest(email: $email, password: $password, passwordConfirm: $passwordConfirm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewUserRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, passwordConfirm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewUserRequestImplCopyWith<_$NewUserRequestImpl> get copyWith =>
      __$$NewUserRequestImplCopyWithImpl<_$NewUserRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewUserRequestImplToJson(
      this,
    );
  }
}

abstract class _NewUserRequest implements NewUserRequest {
  factory _NewUserRequest(
      {required final String email,
      required final String password,
      required final String passwordConfirm}) = _$NewUserRequestImpl;

  factory _NewUserRequest.fromJson(Map<String, dynamic> json) =
      _$NewUserRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get passwordConfirm;
  @override
  @JsonKey(ignore: true)
  _$$NewUserRequestImplCopyWith<_$NewUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
