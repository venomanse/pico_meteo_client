// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_in_with_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogInWithEmailRequest _$LogInWithEmailRequestFromJson(
    Map<String, dynamic> json) {
  return _LogInWithEmailRequest.fromJson(json);
}

/// @nodoc
mixin _$LogInWithEmailRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogInWithEmailRequestCopyWith<LogInWithEmailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInWithEmailRequestCopyWith<$Res> {
  factory $LogInWithEmailRequestCopyWith(LogInWithEmailRequest value,
          $Res Function(LogInWithEmailRequest) then) =
      _$LogInWithEmailRequestCopyWithImpl<$Res, LogInWithEmailRequest>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LogInWithEmailRequestCopyWithImpl<$Res,
        $Val extends LogInWithEmailRequest>
    implements $LogInWithEmailRequestCopyWith<$Res> {
  _$LogInWithEmailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogInWithEmailRequestImplCopyWith<$Res>
    implements $LogInWithEmailRequestCopyWith<$Res> {
  factory _$$LogInWithEmailRequestImplCopyWith(
          _$LogInWithEmailRequestImpl value,
          $Res Function(_$LogInWithEmailRequestImpl) then) =
      __$$LogInWithEmailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LogInWithEmailRequestImplCopyWithImpl<$Res>
    extends _$LogInWithEmailRequestCopyWithImpl<$Res,
        _$LogInWithEmailRequestImpl>
    implements _$$LogInWithEmailRequestImplCopyWith<$Res> {
  __$$LogInWithEmailRequestImplCopyWithImpl(_$LogInWithEmailRequestImpl _value,
      $Res Function(_$LogInWithEmailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LogInWithEmailRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogInWithEmailRequestImpl implements _LogInWithEmailRequest {
  _$LogInWithEmailRequestImpl({required this.email, required this.password});

  factory _$LogInWithEmailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogInWithEmailRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LogInWithEmailRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInWithEmailRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInWithEmailRequestImplCopyWith<_$LogInWithEmailRequestImpl>
      get copyWith => __$$LogInWithEmailRequestImplCopyWithImpl<
          _$LogInWithEmailRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogInWithEmailRequestImplToJson(
      this,
    );
  }
}

abstract class _LogInWithEmailRequest implements LogInWithEmailRequest {
  factory _LogInWithEmailRequest(
      {required final String email,
      required final String password}) = _$LogInWithEmailRequestImpl;

  factory _LogInWithEmailRequest.fromJson(Map<String, dynamic> json) =
      _$LogInWithEmailRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LogInWithEmailRequestImplCopyWith<_$LogInWithEmailRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
