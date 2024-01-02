import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/bme280_measurement.dart';

part 'bme280_measurement_list_response.freezed.dart';
part 'bme280_measurement_list_response.g.dart';

@freezed
class Bme280MeasurementListResponse with _$Bme280MeasurementListResponse {
  factory Bme280MeasurementListResponse({
    required int page,
    required int perPage,
    required int totalItems,
    required int totalPages,
    required IList<Bme280Measurement> items,
  }) = _Bme280MeasurementListResponse;

  factory Bme280MeasurementListResponse.fromJson(Map<String, dynamic> json) =>
      _$Bme280MeasurementListResponseFromJson(json);
}
