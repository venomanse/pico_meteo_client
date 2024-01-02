import 'package:models/user.dart';

import '../app_state.dart';
import 'models/session_state.dart';

/// Returns session
SessionState selectSession(AppState state) => state.session;

/// Returns true if session is available
bool selectSessionIsAvailable(AppState state) =>
    state.session is SessionStateAvailable;

/// Returns session user
User? selectSessionUser(AppState state) => switch (state.session) {
      SessionStateIdle() => null,
      SessionStateAvailable(:final user) => user,
    };
