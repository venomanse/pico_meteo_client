import 'package:async_redux/async_redux.dart';
import 'package:http_client/requests/log_in_with_email_request.dart';
import 'package:storage/storage.dart';

import '../../../service_locator.dart';
import '../../app_state.dart';
import '../models/log_in_state.dart';

class TryAutoLogInAction extends ReduxAction<AppState> {
  @override
  void before() => dispatchSync(WaitAction.add(LogInWaiting.autoLogin));

  @override
  void after() => dispatchSync(
        WaitAction.remove(LogInWaiting.autoLogin),
      );

  @override
  Future<AppState?> reduce() async {
    final biometricData = await SecurityStorage().getBiometricData();

    if (biometricData != null) {
      await getUsersApi.logIn(
        request: LogInWithEmailRequest(
          email: biometricData.email,
          password: biometricData.password,
        ),
      );
    }

    return null;
  }
}
