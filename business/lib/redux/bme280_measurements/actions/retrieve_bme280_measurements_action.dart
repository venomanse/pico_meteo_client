import 'package:async_redux/async_redux.dart';
import 'package:http_client/requests/bme280_measurement_list_request.dart';

import '../../../service_locator.dart';
import '../../app_state.dart';
import '../models/bme280_measurements_state.dart';
import 'add_bme280_measurements_action.dart';

class RetrieveBme280MeasurementsAction extends ReduxAction<AppState> {
  @override
  void before() => dispatchSync(
        WaitAction.add(Bme280MeasurementsWaiting.wait, ref: this),
      );

  @override
  void after() => dispatchSync(
        WaitAction.remove(Bme280MeasurementsWaiting.wait, ref: this),
      );

  @override
  Future<AppState?> reduce() async {
    final result = await getBme280MeasurementsApi.retrieve(
      request: Bme280MeasurementListRequest(
        page: 1,
        perPage: 200,
        from: DateTime.now().subtract(const Duration(days: 1)),
        to: DateTime.now(),
        sort: 'created',
      ),
    );

    dispatchSync(
      AddBme280MeasurementsAction(
        bme280Measurements: result.items,
      ),
      notify: false,
    );

    return null;
  }
}
