import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:http_client/requests/log_in_with_email_request.dart';

import '../../../service_locator.dart';
import '../../app_state.dart';
import '../log_in_selectors.dart';
import '../models/log_in_state.dart';

class LogInWithEmailAction extends ReduxAction<AppState> {
  @override
  void before() => dispatchSync(WaitAction.add(LogInWaiting.wait));

  @override
  void after() =>
      dispatchSync(WaitAction.remove(LogInWaiting.wait), notify: false);

  @override
  Future<AppState> reduce() async {
    final email = selectLogInEmail(state)!;
    final password = selectLogInPassword(state)!;

    await getUsersApi.logIn(
      request: LogInWithEmailRequest(
        email: email,
        password: password,
      ),
    );

    return state.copyWith(logIn: const LogInState());
  }
}
