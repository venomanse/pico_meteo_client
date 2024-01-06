// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bme280_measurements_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Bme280MeasurementsViewState {
  DateTime? get selectedDay => throw _privateConstructorUsedError;
  MeasurementTypeEnum get measurementType => throw _privateConstructorUsedError;
  IList<String> get sortedView => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Bme280MeasurementsViewStateCopyWith<Bme280MeasurementsViewState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Bme280MeasurementsViewStateCopyWith<$Res> {
  factory $Bme280MeasurementsViewStateCopyWith(
          Bme280MeasurementsViewState value,
          $Res Function(Bme280MeasurementsViewState) then) =
      _$Bme280MeasurementsViewStateCopyWithImpl<$Res,
          Bme280MeasurementsViewState>;
  @useResult
  $Res call(
      {DateTime? selectedDay,
      MeasurementTypeEnum measurementType,
      IList<String> sortedView});
}

/// @nodoc
class _$Bme280MeasurementsViewStateCopyWithImpl<$Res,
        $Val extends Bme280MeasurementsViewState>
    implements $Bme280MeasurementsViewStateCopyWith<$Res> {
  _$Bme280MeasurementsViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? measurementType = null,
    Object? sortedView = null,
  }) {
    return _then(_value.copyWith(
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      measurementType: null == measurementType
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementTypeEnum,
      sortedView: null == sortedView
          ? _value.sortedView
          : sortedView // ignore: cast_nullable_to_non_nullable
              as IList<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Bme280MeasurementsViewStateImplCopyWith<$Res>
    implements $Bme280MeasurementsViewStateCopyWith<$Res> {
  factory _$$Bme280MeasurementsViewStateImplCopyWith(
          _$Bme280MeasurementsViewStateImpl value,
          $Res Function(_$Bme280MeasurementsViewStateImpl) then) =
      __$$Bme280MeasurementsViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? selectedDay,
      MeasurementTypeEnum measurementType,
      IList<String> sortedView});
}

/// @nodoc
class __$$Bme280MeasurementsViewStateImplCopyWithImpl<$Res>
    extends _$Bme280MeasurementsViewStateCopyWithImpl<$Res,
        _$Bme280MeasurementsViewStateImpl>
    implements _$$Bme280MeasurementsViewStateImplCopyWith<$Res> {
  __$$Bme280MeasurementsViewStateImplCopyWithImpl(
      _$Bme280MeasurementsViewStateImpl _value,
      $Res Function(_$Bme280MeasurementsViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? measurementType = null,
    Object? sortedView = null,
  }) {
    return _then(_$Bme280MeasurementsViewStateImpl(
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      measurementType: null == measurementType
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementTypeEnum,
      sortedView: null == sortedView
          ? _value.sortedView
          : sortedView // ignore: cast_nullable_to_non_nullable
              as IList<String>,
    ));
  }
}

/// @nodoc

class _$Bme280MeasurementsViewStateImpl
    implements _Bme280MeasurementsViewState {
  const _$Bme280MeasurementsViewStateImpl(
      {this.selectedDay,
      this.measurementType = MeasurementTypeEnum.temperature,
      this.sortedView = const IListConst<String>([])});

  @override
  final DateTime? selectedDay;
  @override
  @JsonKey()
  final MeasurementTypeEnum measurementType;
  @override
  @JsonKey()
  final IList<String> sortedView;

  @override
  String toString() {
    return 'Bme280MeasurementsViewState(selectedDay: $selectedDay, measurementType: $measurementType, sortedView: $sortedView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Bme280MeasurementsViewStateImpl &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.measurementType, measurementType) ||
                other.measurementType == measurementType) &&
            const DeepCollectionEquality()
                .equals(other.sortedView, sortedView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDay, measurementType,
      const DeepCollectionEquality().hash(sortedView));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Bme280MeasurementsViewStateImplCopyWith<_$Bme280MeasurementsViewStateImpl>
      get copyWith => __$$Bme280MeasurementsViewStateImplCopyWithImpl<
          _$Bme280MeasurementsViewStateImpl>(this, _$identity);
}

abstract class _Bme280MeasurementsViewState
    implements Bme280MeasurementsViewState {
  const factory _Bme280MeasurementsViewState(
      {final DateTime? selectedDay,
      final MeasurementTypeEnum measurementType,
      final IList<String> sortedView}) = _$Bme280MeasurementsViewStateImpl;

  @override
  DateTime? get selectedDay;
  @override
  MeasurementTypeEnum get measurementType;
  @override
  IList<String> get sortedView;
  @override
  @JsonKey(ignore: true)
  _$$Bme280MeasurementsViewStateImplCopyWith<_$Bme280MeasurementsViewStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
