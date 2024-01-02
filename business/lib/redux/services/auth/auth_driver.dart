import 'package:async_redux/async_redux.dart';

import '../../app_state.dart';
import 'auth.dart';

class AuthDriver implements AuthServiceDriverInterface {
  AuthDriver({required Store<AppState> store}) : _store = store;

  final Store<AppState> _store;

  @override
  void onLogin() {}

  @override
  void onLogout() {}
}
