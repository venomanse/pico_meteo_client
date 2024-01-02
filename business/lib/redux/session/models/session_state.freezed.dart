// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionState {}

/// @nodoc
abstract class $SessionStateCopyWith<$Res> {
  factory $SessionStateCopyWith(
          SessionState value, $Res Function(SessionState) then) =
      _$SessionStateCopyWithImpl<$Res, SessionState>;
}

/// @nodoc
class _$SessionStateCopyWithImpl<$Res, $Val extends SessionState>
    implements $SessionStateCopyWith<$Res> {
  _$SessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SessionStateIdleImplCopyWith<$Res> {
  factory _$$SessionStateIdleImplCopyWith(_$SessionStateIdleImpl value,
          $Res Function(_$SessionStateIdleImpl) then) =
      __$$SessionStateIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionStateIdleImplCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$SessionStateIdleImpl>
    implements _$$SessionStateIdleImplCopyWith<$Res> {
  __$$SessionStateIdleImplCopyWithImpl(_$SessionStateIdleImpl _value,
      $Res Function(_$SessionStateIdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SessionStateIdleImpl implements SessionStateIdle {
  const _$SessionStateIdleImpl();

  @override
  String toString() {
    return 'SessionState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SessionStateIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SessionStateIdle implements SessionState {
  const factory SessionStateIdle() = _$SessionStateIdleImpl;
}

/// @nodoc
abstract class _$$SessionStateAvailableImplCopyWith<$Res> {
  factory _$$SessionStateAvailableImplCopyWith(
          _$SessionStateAvailableImpl value,
          $Res Function(_$SessionStateAvailableImpl) then) =
      __$$SessionStateAvailableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SessionStateAvailableImplCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$SessionStateAvailableImpl>
    implements _$$SessionStateAvailableImplCopyWith<$Res> {
  __$$SessionStateAvailableImplCopyWithImpl(_$SessionStateAvailableImpl _value,
      $Res Function(_$SessionStateAvailableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SessionStateAvailableImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SessionStateAvailableImpl implements SessionStateAvailable {
  const _$SessionStateAvailableImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'SessionState.available(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionStateAvailableImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionStateAvailableImplCopyWith<_$SessionStateAvailableImpl>
      get copyWith => __$$SessionStateAvailableImplCopyWithImpl<
          _$SessionStateAvailableImpl>(this, _$identity);
}

abstract class SessionStateAvailable implements SessionState {
  const factory SessionStateAvailable({required final User user}) =
      _$SessionStateAvailableImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$SessionStateAvailableImplCopyWith<_$SessionStateAvailableImpl>
      get copyWith => throw _privateConstructorUsedError;
}
