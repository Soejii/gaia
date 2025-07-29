import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/shared/core/infrastructure/auth/auth_state_provider.dart';

/// Emits every AuthStatus change as a simple Stream.
/// *Not* a StreamProvider—just a Provider that returns a Stream.
final authStateStreamProvider = Provider<Stream<AuthStatus>>((ref) {
  final controller = StreamController<AuthStatus>();

  // push current value immediately
  controller.add(ref.read(authStateProvider));

  // forward every change
  ref.listen<AuthStatus>(
    authStateProvider,
    (_, next) => controller.add(next),
  );

  // cleanup
  ref.onDispose(controller.close);
  return controller.stream;
});
