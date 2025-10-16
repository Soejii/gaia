import 'dart:convert';
import 'package:flutter/services.dart';

class AppConfig {
  final String appName;
  final Uri baseUrl;
  final Map<String, bool> features;
  final String deeplinkScheme;
  AppConfig({
    required this.appName,
    required this.baseUrl,
    required this.features,
    required this.deeplinkScheme,
  });

  factory AppConfig.fromJson(Map<String, dynamic> j) => AppConfig(
    appName: j['appName'] as String,
    baseUrl: Uri.parse(j['baseUrl'] as String),
    features: Map<String, bool>.from(j['features'] ?? const {}),
    deeplinkScheme: j['deeplinkScheme'] as String? ?? 'gaiaapp',
  );
}

class AppConfigLoader {
  static Future<AppConfig> load(String client, String env) async {
    final path = 'assets/clients/$client/config.$env.json';
    final jsonStr = await rootBundle.loadString(path);
    final cfg = AppConfig.fromJson(json.decode(jsonStr) as Map<String, dynamic>);
    // guard rails
    assert(env != 'prod' || cfg.baseUrl.toString().isNotEmpty, 'prod baseUrl must not be empty');
    return cfg;
  }
}
