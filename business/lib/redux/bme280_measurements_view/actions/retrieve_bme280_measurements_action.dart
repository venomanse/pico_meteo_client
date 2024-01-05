import 'package:async_redux/async_redux.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:http_client/requests/bme280_measurement_list_request.dart';

import '../../../service_locator.dart';
import '../../app_state.dart';
import '../../bme280_measurements/actions/add_bme280_measurements_action.dart';
import '../../bme280_measurements/models/bme280_measurements_state.dart';
import '../bme280_measurements_view_selectors.dart';
import 'set_selected_day_action.dart';

class RetrieveBme280MeasurementsAction extends ReduxAction<AppState> {
  RetrieveBme280MeasurementsAction({
    required this.selectedDay,
  });

  final DateTime? selectedDay;

  @override
  void before() => dispatchSync(
        WaitAction.add(Bme280MeasurementsWaiting.wait, ref: this),
      );

  @override
  void after() => dispatchSync(
        WaitAction.remove(Bme280MeasurementsWaiting.wait, ref: this),
      );

  @override
  Future<AppState> reduce() async {
    final day = selectedDay ?? selectBme280MeasurementsViewSelectedDay(state);

    dispatchSync(
      SetSelectedDayAction(selectedDay: selectedDay ?? DateTime.now()),
      notify: false,
    );

    final result = await getBme280MeasurementsApi.retrieve(
      request: Bme280MeasurementListRequest(
        page: 1,
        perPage: 200,
        from: DateTime(
          day.year,
          day.month,
          day.day,
        ).toUtc(),
        to: DateTime(
          day.year,
          day.month,
          day.day,
          23,
          59,
          59,
        ).toUtc(),
        sort: 'created',
      ),
    );

    dispatchSync(
      AddBme280MeasurementsAction(
        bme280Measurements: result.items,
      ),
      notify: false,
    );

    final sortedView = result.items.map((e) => e.id).toIList();

    return state.copyWith.bme280MeasurementsView(
      sortedView: sortedView,
    );
  }
}
