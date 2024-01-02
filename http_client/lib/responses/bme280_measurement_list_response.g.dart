// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bme280_measurement_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Bme280MeasurementListResponseImpl
    _$$Bme280MeasurementListResponseImplFromJson(Map<String, dynamic> json) =>
        _$Bme280MeasurementListResponseImpl(
          page: json['page'] as int,
          perPage: json['perPage'] as int,
          totalItems: json['totalItems'] as int,
          totalPages: json['totalPages'] as int,
          items: IList<Bme280Measurement>.fromJson(
              json['items'],
              (value) =>
                  Bme280Measurement.fromJson(value as Map<String, dynamic>)),
        );

Map<String, dynamic> _$$Bme280MeasurementListResponseImplToJson(
        _$Bme280MeasurementListResponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
      'items': instance.items.toJson(
        (value) => value,
      ),
    };
