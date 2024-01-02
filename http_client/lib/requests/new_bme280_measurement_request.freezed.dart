// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_bme280_measurement_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewBme280MeasurementRequest _$NewBme280MeasurementRequestFromJson(
    Map<String, dynamic> json) {
  return _NewBme280MeasurementRequest.fromJson(json);
}

/// @nodoc
mixin _$NewBme280MeasurementRequest {
  String get uuid => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  double get pressure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewBme280MeasurementRequestCopyWith<NewBme280MeasurementRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewBme280MeasurementRequestCopyWith<$Res> {
  factory $NewBme280MeasurementRequestCopyWith(
          NewBme280MeasurementRequest value,
          $Res Function(NewBme280MeasurementRequest) then) =
      _$NewBme280MeasurementRequestCopyWithImpl<$Res,
          NewBme280MeasurementRequest>;
  @useResult
  $Res call(
      {String uuid, double temperature, double humidity, double pressure});
}

/// @nodoc
class _$NewBme280MeasurementRequestCopyWithImpl<$Res,
        $Val extends NewBme280MeasurementRequest>
    implements $NewBme280MeasurementRequestCopyWith<$Res> {
  _$NewBme280MeasurementRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? temperature = null,
    Object? humidity = null,
    Object? pressure = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewBme280MeasurementRequestImplCopyWith<$Res>
    implements $NewBme280MeasurementRequestCopyWith<$Res> {
  factory _$$NewBme280MeasurementRequestImplCopyWith(
          _$NewBme280MeasurementRequestImpl value,
          $Res Function(_$NewBme280MeasurementRequestImpl) then) =
      __$$NewBme280MeasurementRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid, double temperature, double humidity, double pressure});
}

/// @nodoc
class __$$NewBme280MeasurementRequestImplCopyWithImpl<$Res>
    extends _$NewBme280MeasurementRequestCopyWithImpl<$Res,
        _$NewBme280MeasurementRequestImpl>
    implements _$$NewBme280MeasurementRequestImplCopyWith<$Res> {
  __$$NewBme280MeasurementRequestImplCopyWithImpl(
      _$NewBme280MeasurementRequestImpl _value,
      $Res Function(_$NewBme280MeasurementRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? temperature = null,
    Object? humidity = null,
    Object? pressure = null,
  }) {
    return _then(_$NewBme280MeasurementRequestImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewBme280MeasurementRequestImpl
    implements _NewBme280MeasurementRequest {
  _$NewBme280MeasurementRequestImpl(
      {required this.uuid,
      required this.temperature,
      required this.humidity,
      required this.pressure});

  factory _$NewBme280MeasurementRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NewBme280MeasurementRequestImplFromJson(json);

  @override
  final String uuid;
  @override
  final double temperature;
  @override
  final double humidity;
  @override
  final double pressure;

  @override
  String toString() {
    return 'NewBme280MeasurementRequest(uuid: $uuid, temperature: $temperature, humidity: $humidity, pressure: $pressure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewBme280MeasurementRequestImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uuid, temperature, humidity, pressure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewBme280MeasurementRequestImplCopyWith<_$NewBme280MeasurementRequestImpl>
      get copyWith => __$$NewBme280MeasurementRequestImplCopyWithImpl<
          _$NewBme280MeasurementRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewBme280MeasurementRequestImplToJson(
      this,
    );
  }
}

abstract class _NewBme280MeasurementRequest
    implements NewBme280MeasurementRequest {
  factory _NewBme280MeasurementRequest(
      {required final String uuid,
      required final double temperature,
      required final double humidity,
      required final double pressure}) = _$NewBme280MeasurementRequestImpl;

  factory _NewBme280MeasurementRequest.fromJson(Map<String, dynamic> json) =
      _$NewBme280MeasurementRequestImpl.fromJson;

  @override
  String get uuid;
  @override
  double get temperature;
  @override
  double get humidity;
  @override
  double get pressure;
  @override
  @JsonKey(ignore: true)
  _$$NewBme280MeasurementRequestImplCopyWith<_$NewBme280MeasurementRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
