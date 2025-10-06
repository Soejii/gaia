import 'package:gaia/features/chat/presentation/providers/chat_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'send_message_controller.g.dart';

@riverpod
class SendMessageController extends _$SendMessageController {
  @override
  AsyncValue<bool> build() => const AsyncValue.data(false);
  
  Future<void> sendMessage({
    required int userId,
    required String message,
  }) async {
    state = const AsyncValue.loading();

    try {
      final dataSource = ref.read(chatRemoteDataSourceProvider);
      await dataSource.sendMessage(userId, message);
      state = const AsyncValue.data(true);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
      rethrow;
    }
  }
}