import '../../redux/app_state.dart';
import 'models/log_in_state.dart';

/// Returns login waiting value
bool selectLogInWaiting(AppState state) =>
    state.wait.isWaitingFor(LogInWaiting.login);

/// Returns auto login waiting value
bool selectAutoLogInWaiting(AppState state) =>
    state.wait.isWaitingFor(LogInWaiting.autoLogin);

/// Returns email value
String? selectLogInEmail(AppState state) => state.logIn.email;

/// Returns password value
String? selectLogInPassword(AppState state) => state.logIn.password;

/// Returns true if email & password is setted
bool selectLogInDataIsSet(AppState state) {
  final email = selectLogInEmail(state) ?? '';
  final password = selectLogInPassword(state) ?? '';

  return email.isNotEmpty && password.isNotEmpty;
}
