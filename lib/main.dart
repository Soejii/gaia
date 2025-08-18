import 'package:flutter/material.dart';
import 'package:gaia/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/shared/core/config.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  const env =
      String.fromEnvironment('ENV', defaultValue: Environments.DEV);
  debugPrint('✅ Running in ENV: $env');
  initializeDateFormatting('id_ID').then(
    (value) => runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}
