// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bme280_measurement_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Bme280MeasurementListRequestImpl _$$Bme280MeasurementListRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$Bme280MeasurementListRequestImpl(
      page: json['page'] as int,
      perPage: json['perPage'] as int,
      from: DateTime.parse(json['from'] as String),
      to: DateTime.parse(json['to'] as String),
      sort: json['sort'] as String,
    );

Map<String, dynamic> _$$Bme280MeasurementListRequestImplToJson(
        _$Bme280MeasurementListRequestImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
      'sort': instance.sort,
    };
