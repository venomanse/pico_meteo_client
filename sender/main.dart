import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;
import 'package:http_client/bme280_measurements.dart';
import 'package:http_client/requests/new_bme280_measurement_request.dart';
import 'package:logging/logging.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:pro_pretty_logging/pro_pretty_logging.dart';

Timer? _timer;
DateTime? _lastExecutionTime;
PocketBase? _pocketBase;

final _logger = Logger('Sender');

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  prettyLogging(enable: true);

  _lastExecutionTime = null;
  _pocketBase = null;

  if (_timer != null) {
    _timer!.cancel();
  }

  _pocketBase = PocketBase(Platform.environment['POCKETBASE_URL']!);
  _timer = Timer.periodic(const Duration(milliseconds: 200), _checkTime);

  return serve(handler, ip, port);
}

void _checkTime(Timer timer) {
  final now = DateTime.now();
  final minutes = now.minute;
  final seconds = now.second;

  if (minutes % 10 == 0 &&
      seconds == 0 &&
      (_lastExecutionTime == null ||
          now.difference(_lastExecutionTime!).inMinutes >= 10)) {
    _lastExecutionTime = now;

    scheduleMicrotask(() async => _sendSensorData());
  }
}

Future<void> _sendSensorData() async {
  final response = await http.get(
    Uri.parse(Platform.environment['PICO_METEO_URL']!),
  );

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;

    final temperature = json['temperature'] as double;
    final humidity = json['humidity'] as double;
    final pressure = json['pressure'] as double;

    _logger
        .info('${DateTime.now().toIso8601String()} - temperature: $temperature '
            'humidity: $humidity '
            'pressure: $pressure ');

    final request = NewBme280MeasurementRequest(
      uuid: 'kitchen',
      temperature: temperature,
      humidity: humidity,
      pressure: pressure,
    );

    await Bme280MeasurementsApi(pocketBase: _pocketBase!).create(
      request: request,
      headers: {'x_token': Platform.environment['X_TOKEN']!},
    );
  }
}
