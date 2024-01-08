import 'package:flutter/material.dart';

ThemeData get _base => ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.indigo,
      ),
    );

ThemeData buildTheme() => _base.copyWith();
