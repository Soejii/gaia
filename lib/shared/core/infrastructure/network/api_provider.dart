import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/shared/core/infrastructure/network/api_client.dart';
import 'package:gaia/shared/core/infrastructure/network/config_provider.dart';
import 'package:gaia/shared/core/infrastructure/storage/token_storage_provider.dart';

final apiClientProvider = Provider<ApiClient>((ref) {
final config = ref.read(configProvider);
final baseUrl = config['baseUrl']!;  final tokenStorage = ref.read(tokenStorageProvider);
  final token = tokenStorage.getTokenSync();
  return ApiClient(baseUrl: baseUrl, token: token);
});
