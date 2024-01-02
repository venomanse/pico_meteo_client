import 'package:intl/intl.dart';
import 'package:models/bme280_measurement.dart';
import 'package:pocketbase/pocketbase.dart';

import 'requests/bme280_measurement_list_request.dart';
import 'requests/new_bme280_measurement_request.dart';
import 'responses/bme280_measurement_list_response.dart';

final class Bme280MeasurementsApi {
  Bme280MeasurementsApi({
    required PocketBase pocketBase,
  }) : _pocketBase = pocketBase;

  final PocketBase _pocketBase;

  RecordService get collection => _pocketBase.collection('bme280_measurements');

  /// Create a new user with email and password and send a verification email
  Future<Bme280Measurement> create({
    required NewBme280MeasurementRequest request,
  }) async {
    final body = request.toJson();
    final result = await collection.create(body: body);

    final json = result.toJson();

    return Bme280Measurement.fromJson(json);
  }

  /// Retrieve measurements with filter.
  Future<Bme280MeasurementListResponse> retrieve({
    required Bme280MeasurementListRequest request,
  }) async {
    final filter = 'created >= "${request.from.formatted}" '
        '&& created <= "${request.to.formatted}"';

    final result = await collection.getList(
      page: request.page,
      perPage: request.perPage,
      filter: filter,
      sort: 'created',
    );

    final json = result.toJson();

    return Bme280MeasurementListResponse.fromJson(json);
  }
}

extension on DateTime {
  String get formatted {
    final formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
    final formatted = formatter.format(this);

    return formatted;
  }
}
