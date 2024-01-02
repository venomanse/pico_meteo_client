import 'package:freezed_annotation/freezed_annotation.dart';

part 'bme280_measurement.freezed.dart';
part 'bme280_measurement.g.dart';

@freezed
class Bme280Measurement with _$Bme280Measurement {
  factory Bme280Measurement({
    required String id,
    required String uuid,
    required double temperature,
    required double humidity,
    required double pressure,
    required DateTime created,
    required DateTime updated,
  }) = _Bme280Measurement;

  factory Bme280Measurement.fromJson(Map<String, dynamic> json) =>
      _$Bme280MeasurementFromJson(json);
}
