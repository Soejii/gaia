import 'package:flutter/material.dart';
import 'package:gaia/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/app/environment/app_config.dart';
import 'package:gaia/app/environment/build_environment.dart';
import 'package:gaia/shared/core/infrastructure/network/config_provider.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const client = BuildEnv.client;
  const env = BuildEnv.env;

  final cfg = await AppConfigLoader.load(client, env);
  debugPrint('✅ CLIENT=$client  ENV=$env  baseUrl=${cfg.baseUrl}');
  initializeDateFormatting('id_ID').then(
    (value) => runApp(
      ProviderScope(
        overrides: [
          appConfigProvider.overrideWithValue(cfg),
        ],
        child: const MyApp(),
      ),
    ),
  );
}
