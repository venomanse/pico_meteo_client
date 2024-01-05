import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';

class SetSelectedDayAction extends ReduxAction<AppState> {
  SetSelectedDayAction({required this.selectedDay});

  final DateTime selectedDay;

  @override
  AppState reduce() =>
      state.copyWith.bme280MeasurementsView(selectedDay: selectedDay);
}
