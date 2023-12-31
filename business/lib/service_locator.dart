import 'package:async_redux/async_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:http_client/users.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:storage/key_value_storage.dart';

import 'environment.dart';
import 'redux/app_state.dart';
import 'redux/services/connectivity/connectivity.dart';
import 'redux/services/connectivity/connectivity_driver.dart';

// ambient variable to access the service locator
final _locator = GetIt.instance;

ConnectivityService get getConnectivity => _locator.get<ConnectivityService>();

UsersApi get getUsersApi => _locator.get<UsersApi>();

Future<void> initLocator(Store<AppState> store, Environment env) async {
  await initHiveStorage();

  // Connectivity Service
  final connectivity = ConnectivityService(
    driver: ConnectivityDriver(store: store),
  );

  final pocketBase = PocketBase(env.baseUrl);
  final usersApi = UsersApi(
    pocketBase: pocketBase,
  );

  _locator.registerSingleton(usersApi);

  await connectivity.start();
  _locator.registerSingleton(connectivity);
}
