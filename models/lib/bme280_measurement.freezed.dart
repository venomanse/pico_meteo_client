// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bme280_measurement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bme280Measurement _$Bme280MeasurementFromJson(Map<String, dynamic> json) {
  return _Bme280Measurement.fromJson(json);
}

/// @nodoc
mixin _$Bme280Measurement {
  String get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  double get pressure => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Bme280MeasurementCopyWith<Bme280Measurement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Bme280MeasurementCopyWith<$Res> {
  factory $Bme280MeasurementCopyWith(
          Bme280Measurement value, $Res Function(Bme280Measurement) then) =
      _$Bme280MeasurementCopyWithImpl<$Res, Bme280Measurement>;
  @useResult
  $Res call(
      {String id,
      String uuid,
      double temperature,
      double humidity,
      double pressure,
      DateTime created,
      DateTime updated});
}

/// @nodoc
class _$Bme280MeasurementCopyWithImpl<$Res, $Val extends Bme280Measurement>
    implements $Bme280MeasurementCopyWith<$Res> {
  _$Bme280MeasurementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? temperature = null,
    Object? humidity = null,
    Object? pressure = null,
    Object? created = null,
    Object? updated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Bme280MeasurementImplCopyWith<$Res>
    implements $Bme280MeasurementCopyWith<$Res> {
  factory _$$Bme280MeasurementImplCopyWith(_$Bme280MeasurementImpl value,
          $Res Function(_$Bme280MeasurementImpl) then) =
      __$$Bme280MeasurementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String uuid,
      double temperature,
      double humidity,
      double pressure,
      DateTime created,
      DateTime updated});
}

/// @nodoc
class __$$Bme280MeasurementImplCopyWithImpl<$Res>
    extends _$Bme280MeasurementCopyWithImpl<$Res, _$Bme280MeasurementImpl>
    implements _$$Bme280MeasurementImplCopyWith<$Res> {
  __$$Bme280MeasurementImplCopyWithImpl(_$Bme280MeasurementImpl _value,
      $Res Function(_$Bme280MeasurementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? temperature = null,
    Object? humidity = null,
    Object? pressure = null,
    Object? created = null,
    Object? updated = null,
  }) {
    return _then(_$Bme280MeasurementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Bme280MeasurementImpl implements _Bme280Measurement {
  _$Bme280MeasurementImpl(
      {required this.id,
      required this.uuid,
      required this.temperature,
      required this.humidity,
      required this.pressure,
      required this.created,
      required this.updated});

  factory _$Bme280MeasurementImpl.fromJson(Map<String, dynamic> json) =>
      _$$Bme280MeasurementImplFromJson(json);

  @override
  final String id;
  @override
  final String uuid;
  @override
  final double temperature;
  @override
  final double humidity;
  @override
  final double pressure;
  @override
  final DateTime created;
  @override
  final DateTime updated;

  @override
  String toString() {
    return 'Bme280Measurement(id: $id, uuid: $uuid, temperature: $temperature, humidity: $humidity, pressure: $pressure, created: $created, updated: $updated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Bme280MeasurementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, uuid, temperature, humidity, pressure, created, updated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Bme280MeasurementImplCopyWith<_$Bme280MeasurementImpl> get copyWith =>
      __$$Bme280MeasurementImplCopyWithImpl<_$Bme280MeasurementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Bme280MeasurementImplToJson(
      this,
    );
  }
}

abstract class _Bme280Measurement implements Bme280Measurement {
  factory _Bme280Measurement(
      {required final String id,
      required final String uuid,
      required final double temperature,
      required final double humidity,
      required final double pressure,
      required final DateTime created,
      required final DateTime updated}) = _$Bme280MeasurementImpl;

  factory _Bme280Measurement.fromJson(Map<String, dynamic> json) =
      _$Bme280MeasurementImpl.fromJson;

  @override
  String get id;
  @override
  String get uuid;
  @override
  double get temperature;
  @override
  double get humidity;
  @override
  double get pressure;
  @override
  DateTime get created;
  @override
  DateTime get updated;
  @override
  @JsonKey(ignore: true)
  _$$Bme280MeasurementImplCopyWith<_$Bme280MeasurementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
