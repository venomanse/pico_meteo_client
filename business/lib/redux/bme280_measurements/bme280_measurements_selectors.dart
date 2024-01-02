import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:models/bme280_measurement.dart';

import '../app_state.dart';
import 'models/bme280_measurements_state.dart';

/// returns waiting value
bool selectBme280MeasurementsIsWaiting(AppState state) =>
    state.wait.isWaitingFor(Bme280MeasurementsWaiting.wait);

/// Returns [IMap<String, Bme280Measurement>] table
IMap<String, Bme280Measurement> selectBme280MeasurementsTable(AppState state) =>
    state.bme280Measurements.table;

/// Returns [Bme280Measurement] value by id
Bme280Measurement selectBme280MeasurementsById(
  AppState state, {
  required String id,
}) =>
    selectBme280MeasurementsTable(state)[id]!;
