import 'package:freezed_annotation/freezed_annotation.dart';

part 'bme280_measurement_list_request.freezed.dart';
part 'bme280_measurement_list_request.g.dart';

@freezed
class Bme280MeasurementListRequest with _$Bme280MeasurementListRequest {
  factory Bme280MeasurementListRequest({
    required int page,
    required int perPage,
    required DateTime from,
    required DateTime to,
    required String sort,
  }) = _Bme280MeasurementListRequest;

  factory Bme280MeasurementListRequest.fromJson(Map<String, dynamic> json) =>
      _$Bme280MeasurementListRequestFromJson(json);
}
