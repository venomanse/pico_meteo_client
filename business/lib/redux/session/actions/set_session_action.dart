import 'package:async_redux/async_redux.dart';
import 'package:models/user.dart';

import '../../app_state.dart';
import '../models/session_state.dart';

class SetSessionAction extends ReduxAction<AppState> {
  SetSessionAction({required this.user});

  final User? user;

  @override
  AppState reduce() => state.copyWith(
        session: user == null
            ? const SessionStateIdle()
            : SessionStateAvailable(user: user!),
      );
}
