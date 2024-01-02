import 'dart:async';

import 'package:pocketbase/pocketbase.dart';

import '../../../common/services/interface.dart';

abstract class AuthServiceDriverInterface {
  void onLogout();
  void onLogin();
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
      if (event.model == null) {
        print(event.token);
        _driver.onLogout();
      } else {
        print(event.token);
        _driver.onLogin();
      }
    });
  }

  @override
  Future<void> dispose() async {
    super.dispose();
  }
}
