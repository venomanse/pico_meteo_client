import 'dart:async';

import 'package:models/user.dart';
import 'package:pocketbase/pocketbase.dart';

import '../../../common/services/interface.dart';

abstract class AuthServiceDriverInterface {
  void onLogout();
  void onLogin({required User user});
}

class AuthService extends DisposableServiceInterface {
  AuthService({
    required AuthServiceDriverInterface driver,
    required PocketBase pocketBase,
  })  : _driver = driver,
        _pocketBase = pocketBase;

  final AuthServiceDriverInterface _driver;
  final PocketBase _pocketBase;

  @override
  Future<void> start() async {
    super.start();

    _pocketBase.authStore.onChange.listen((event) {
      final model = event.model;
      if (model == null) {
        _driver.onLogout();
      } else if (model is RecordModel) {
        final json = model.toJson();
        final user = User.fromJson(json);
        _driver.onLogin(user: user);
      }
    });
  }

  @override
  Future<void> dispose() async {
    super.dispose();
  }
}
