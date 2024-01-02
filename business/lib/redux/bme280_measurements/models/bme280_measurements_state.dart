import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/bme280_measurement.dart';

part 'bme280_measurements_state.freezed.dart';

@freezed
class Bme280MeasurementsState with _$Bme280MeasurementsState {
  const factory Bme280MeasurementsState({
    @Default(IMapConst<String, Bme280Measurement>({}))
    IMap<String, Bme280Measurement> table,
    @Default(IListConst<String>([])) IList<String> view,
  }) = _Bme280MeasurementsState;
}

enum Bme280MeasurementsWaiting {
  wait,
}
