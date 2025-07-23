import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/shared/core/config.dart';

final configProvider = Provider<Map<String, String>>((ref) {
  return ConfigEnvironments.getEnvironments();
});
