import 'package:async_redux/async_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'bme280_measurements/models/bme280_measurements_state.dart';
import 'bme280_measurements_view/models/bme280_measurements_view_state.dart';
import 'connectivity/models/connectivity_state.dart';
import 'forgot_password/models/forgot_password_state.dart';
import 'log_in/models/log_in_state.dart';
import 'registration/models/registration_state.dart';
import 'reset_password/models/reset_password_state.dart';
import 'session/models/session_state.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required ConnectivityState connectivity,
    required LogInState logIn,
    required RegistrationState registration,
    required ForgotPasswordState forgotPassword,
    required ResetPasswordState resetPassword,
    required SessionState session,
    required Bme280MeasurementsState bme280Measurements,
    required Bme280MeasurementsViewState bme280MeasurementsView,
    required Wait wait,
  }) = _AppState;

  factory AppState.initial() => const AppState(
        connectivity: ConnectivityState(),
        logIn: LogInState(),
        registration: RegistrationState(),
        forgotPassword: ForgotPasswordState(),
        resetPassword: ResetPasswordState(),
        session: SessionStateIdle(),
        bme280Measurements: Bme280MeasurementsState(),
        bme280MeasurementsView: Bme280MeasurementsViewState(),
        wait: Wait.empty,
      );
}
