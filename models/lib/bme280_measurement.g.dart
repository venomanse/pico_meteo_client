// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bme280_measurement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Bme280MeasurementImpl _$$Bme280MeasurementImplFromJson(
        Map<String, dynamic> json) =>
    _$Bme280MeasurementImpl(
      id: json['id'] as String,
      uuid: json['uuid'] as String,
      temperature: (json['temperature'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      pressure: (json['pressure'] as num).toDouble(),
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$$Bme280MeasurementImplToJson(
        _$Bme280MeasurementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
    };
