import 'package:async_redux/async_redux.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:models/bme280_measurement.dart';

import '../../app_state.dart';
import '../bme280_measurements_selectors.dart';

class AddBme280MeasurementsAction extends ReduxAction<AppState> {
  AddBme280MeasurementsAction({
    required this.bme280Measurements,
  });

  final IList<Bme280Measurement> bme280Measurements;

  @override
  AppState reduce() {
    final byId = IMap<String, Bme280Measurement>.fromValues(
      values: bme280Measurements,
      keyMapper: (v) => v.id,
    );

    final table = selectBme280MeasurementsTable(state);
    final updatedTable = table.addAll(byId);

    return state.copyWith.bme280Measurements(table: updatedTable);
  }
}
