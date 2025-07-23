import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'token_storage.dart';
import 'token_storage_impl.dart';

final tokenStorageProvider = Provider<TokenStorage>((ref) {
  return TokenStorageImpl();
});
