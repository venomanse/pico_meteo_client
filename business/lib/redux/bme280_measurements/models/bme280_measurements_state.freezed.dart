// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bme280_measurements_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Bme280MeasurementsState {
  IMap<String, Bme280Measurement> get table =>
      throw _privateConstructorUsedError;
  IList<String> get view => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Bme280MeasurementsStateCopyWith<Bme280MeasurementsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Bme280MeasurementsStateCopyWith<$Res> {
  factory $Bme280MeasurementsStateCopyWith(Bme280MeasurementsState value,
          $Res Function(Bme280MeasurementsState) then) =
      _$Bme280MeasurementsStateCopyWithImpl<$Res, Bme280MeasurementsState>;
  @useResult
  $Res call({IMap<String, Bme280Measurement> table, IList<String> view});
}

/// @nodoc
class _$Bme280MeasurementsStateCopyWithImpl<$Res,
        $Val extends Bme280MeasurementsState>
    implements $Bme280MeasurementsStateCopyWith<$Res> {
  _$Bme280MeasurementsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? table = null,
    Object? view = null,
  }) {
    return _then(_value.copyWith(
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as IMap<String, Bme280Measurement>,
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as IList<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Bme280MeasurementsStateImplCopyWith<$Res>
    implements $Bme280MeasurementsStateCopyWith<$Res> {
  factory _$$Bme280MeasurementsStateImplCopyWith(
          _$Bme280MeasurementsStateImpl value,
          $Res Function(_$Bme280MeasurementsStateImpl) then) =
      __$$Bme280MeasurementsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IMap<String, Bme280Measurement> table, IList<String> view});
}

/// @nodoc
class __$$Bme280MeasurementsStateImplCopyWithImpl<$Res>
    extends _$Bme280MeasurementsStateCopyWithImpl<$Res,
        _$Bme280MeasurementsStateImpl>
    implements _$$Bme280MeasurementsStateImplCopyWith<$Res> {
  __$$Bme280MeasurementsStateImplCopyWithImpl(
      _$Bme280MeasurementsStateImpl _value,
      $Res Function(_$Bme280MeasurementsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? table = null,
    Object? view = null,
  }) {
    return _then(_$Bme280MeasurementsStateImpl(
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as IMap<String, Bme280Measurement>,
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as IList<String>,
    ));
  }
}

/// @nodoc

class _$Bme280MeasurementsStateImpl implements _Bme280MeasurementsState {
  const _$Bme280MeasurementsStateImpl(
      {this.table = const IMapConst<String, Bme280Measurement>({}),
      this.view = const IListConst<String>([])});

  @override
  @JsonKey()
  final IMap<String, Bme280Measurement> table;
  @override
  @JsonKey()
  final IList<String> view;

  @override
  String toString() {
    return 'Bme280MeasurementsState(table: $table, view: $view)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Bme280MeasurementsStateImpl &&
            (identical(other.table, table) || other.table == table) &&
            const DeepCollectionEquality().equals(other.view, view));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, table, const DeepCollectionEquality().hash(view));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Bme280MeasurementsStateImplCopyWith<_$Bme280MeasurementsStateImpl>
      get copyWith => __$$Bme280MeasurementsStateImplCopyWithImpl<
          _$Bme280MeasurementsStateImpl>(this, _$identity);
}

abstract class _Bme280MeasurementsState implements Bme280MeasurementsState {
  const factory _Bme280MeasurementsState(
      {final IMap<String, Bme280Measurement> table,
      final IList<String> view}) = _$Bme280MeasurementsStateImpl;

  @override
  IMap<String, Bme280Measurement> get table;
  @override
  IList<String> get view;
  @override
  @JsonKey(ignore: true)
  _$$Bme280MeasurementsStateImplCopyWith<_$Bme280MeasurementsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
