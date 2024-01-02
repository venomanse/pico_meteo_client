import 'package:async_redux/async_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:http_client/bme280_measurements.dart';
import 'package:http_client/users.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:storage/storage.dart';

import 'environment.dart';
import 'redux/app_state.dart';
import 'redux/services/auth/auth.dart';
import 'redux/services/auth/auth_driver.dart';
import 'redux/services/connectivity/connectivity.dart';
import 'redux/services/connectivity/connectivity_driver.dart';

// ambient variable to access the service locator
final _locator = GetIt.instance;

/// Get the [ConnectivityService] instance
ConnectivityService get getConnectivity => _locator.get<ConnectivityService>();

/// Get the [UsersApi] instance
UsersApi get getUsersApi => _locator.get<UsersApi>();

/// Get the [Bme280MeasurementsApi] instance
Bme280MeasurementsApi get getBme280MeasurementsApi =>
    _locator.get<Bme280MeasurementsApi>();

Future<void> initLocator(Store<AppState> store, Environment env) async {
  await setupStorage();

  // Connectivity Service
  final connectivity = ConnectivityService(
    driver: ConnectivityDriver(store: store),
  );
  _locator.registerSingleton(connectivity);
  await connectivity.start();

  final pocketBase = PocketBase(env.baseUrl);
  // Users API
  final usersApi = UsersApi(pocketBase: pocketBase);
  _locator.registerSingleton(usersApi);

  // Bme280 Measurements API
  final bme280MeasurementsApi = Bme280MeasurementsApi(pocketBase: pocketBase);
  _locator.registerSingleton(bme280MeasurementsApi);

  // Auth Service
  final authService = AuthService(
    driver: AuthDriver(store: store),
    pocketBase: pocketBase,
  );
  _locator.registerSingleton(authService);
  await authService.start();
}
