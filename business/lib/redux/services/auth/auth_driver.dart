import 'package:async_redux/async_redux.dart';
import 'package:models/user.dart';

import '../../app_state.dart';
import '../../session/actions/set_session_action.dart';
import 'auth.dart';

class AuthDriver implements AuthServiceDriverInterface {
  AuthDriver({required Store<AppState> store}) : _store = store;

  final Store<AppState> _store;

  @override
  void onLogin({required User user}) {
    _store.dispatchSync(SetSessionAction(user: user));
  }

  @override
  void onLogout() {
    _store.dispatchSync(SetSessionAction(user: null));
  }
}
