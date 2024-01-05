import 'dart:async';
import 'dart:io';

import 'package:async_redux/async_redux.dart';
import 'package:business/environment.dart';
import 'package:business/redux/store.dart';
import 'package:business/service_locator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_pretty_logging/pro_pretty_logging.dart';
import 'package:window_size/window_size.dart';

import 'app.dart';

Future<void> runEnv(Environment env) async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Meteo');
    setWindowMinSize(const Size(320, 568));
  }

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ),
  );

  prettyLogging(
    enable: kDebugMode,
    ignoredLoggers: ['GoRouter'],
  );

  final store = newStore();

  await initLocator(store, env);

  runApp(
    StoreProvider(
      store: store,
      child: AppConnector(store: store),
    ),
  );
}
