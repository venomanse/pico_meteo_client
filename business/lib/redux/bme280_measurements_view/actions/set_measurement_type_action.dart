import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';
import '../models/measurement_type.dart';

class SetMeasurementTypeAction extends ReduxAction<AppState> {
  SetMeasurementTypeAction({required this.type});

  final MeasurementTypeEnum type;

  @override
  AppState reduce() => state.copyWith.bme280MeasurementsView(
        measurementType: type,
      );
}
