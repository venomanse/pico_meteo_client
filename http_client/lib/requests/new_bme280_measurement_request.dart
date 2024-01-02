import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_bme280_measurement_request.freezed.dart';
part 'new_bme280_measurement_request.g.dart';

@freezed
class NewBme280MeasurementRequest with _$NewBme280MeasurementRequest {
  factory NewBme280MeasurementRequest({
    required String uuid,
    required double temperature,
    required double humidity,
    required double pressure,
  }) = _NewBme280MeasurementRequest;

  factory NewBme280MeasurementRequest.fromJson(Map<String, dynamic> json) =>
      _$NewBme280MeasurementRequestFromJson(json);
}
