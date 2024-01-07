import 'package:async_redux/async_redux.dart';
import 'package:storage/storage.dart';

import '../../../service_locator.dart';
import '../../app_state.dart';

class LogOutAction extends ReduxAction<AppState> {
  @override
  Future<AppState?> reduce() async {
    await SecurityStorage().deleteBiometricData();
    getUsersApi.logOut();

    return null;
  }
}
