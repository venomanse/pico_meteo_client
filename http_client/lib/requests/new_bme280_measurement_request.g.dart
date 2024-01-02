// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_bme280_measurement_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewBme280MeasurementRequestImpl _$$NewBme280MeasurementRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$NewBme280MeasurementRequestImpl(
      uuid: json['uuid'] as String,
      temperature: (json['temperature'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      pressure: (json['pressure'] as num).toDouble(),
    );

Map<String, dynamic> _$$NewBme280MeasurementRequestImplToJson(
        _$NewBme280MeasurementRequestImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
    };
