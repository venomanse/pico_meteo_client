import 'package:async_redux/async_redux.dart';
import 'package:http_client/requests/create_user_request.dart';

import '../../../service_locator.dart';
import '../../app_state.dart';
import '../models/registration_state.dart';
import '../registration_selectors.dart';

class RegistrationAction extends ReduxAction<AppState> {
  @override
  void before() => dispatchSync(WaitAction.add(RegistrationWaiting.wait));

  @override
  void after() => dispatchSync(WaitAction.remove(RegistrationWaiting.wait));

  @override
  Future<AppState?> reduce() async {
    final email = selectRegistrationEmail(state)!;
    final password = selectRegistrationPassword(state)!;
    final passwordConfirm = selectRegistrationConfirmPassword(state)!;

    await getUsersApi.createUser(
      request: CreateUserRequest(
        email: email,
        password: password,
        passwordConfirm: passwordConfirm,
      ),
    );

    return state.copyWith(registration: const RegistrationState());
  }
}
