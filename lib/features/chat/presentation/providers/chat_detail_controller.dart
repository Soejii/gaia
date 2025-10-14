import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/features/chat/domain/entity/chat_message_entity.dart';
import 'package:gaia/features/chat/domain/entity/chat_entity.dart';
import 'package:gaia/features/chat/domain/type/chat_message_type.dart';
import 'package:gaia/features/chat/presentation/providers/chat_providers.dart';
import 'package:gaia/shared/presentation/paged.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_detail_controller.g.dart';

@riverpod
Future<ChatEntity> chatDetailEntity(ChatDetailEntityRef ref, int userId) async {
  final uc = ref.read(getMessagesUsecaseProvider);
  final either = await uc.getMessages(userId: userId, page: 1);
  
  return either.fold(
    (failure) => throw failure,
    (response) => response,
  );
}

@riverpod
class ChatDetailController extends _$ChatDetailController {
  Timer? _ttl;
  Timer? _autoRefreshTimer;
  KeepAliveLink? _link;
  int _currentPage = 1;

  @override
  Future<Paged<ChatMessageEntity>> build(int userId) {
    _link ??= ref.keepAlive();
    ref.onCancel(() {
      _ttl = Timer(const Duration(minutes: 3), () {
        _link?.close();
        _link = null;
      });
    });
    ref.onResume(() => _ttl?.cancel());
    ref.onDispose(() {
      _ttl?.cancel();
      _autoRefreshTimer?.cancel();
    });
    return _fetch();
  }

  Future<Paged<ChatMessageEntity>> _fetch({int page = 1}) async {
    final uc = ref.read(getMessagesUsecaseProvider);
    final either = await uc.getMessages(userId: userId, page: page);
    
    return either.fold(
      (failure) => throw failure,
      (response) {

        return Paged(
          items: response.messages ?? [],
          page: page,
          hasMore: (response.messages?.length ?? 0) >= 20,
        );
      },
    );
  }

  Future<void> refresh() async {
    _currentPage = 1;
    state = const AsyncLoading();
    
    // Force refresh by invalidating any potential cache
    ref.invalidateSelf();
    
    state = await AsyncValue.guard(() => _fetch(page: 1));
  }

  Future<void> loadMore() async {
    final currentState = state.asData?.value;
    if (currentState == null || !currentState.hasMore) return;

    try {
      _currentPage++;
      final newData = await _fetch(page: _currentPage);
      // Insert pesan lama di awal list (reverse pagination)
      final updatedMessages = Paged<ChatMessageEntity>(
        items: [...newData.items, ...currentState.items],
        page: _currentPage,
        hasMore: newData.hasMore,
      );

      state = AsyncData(updatedMessages);
    } catch (error) {
      _currentPage--;
      rethrow;
    }
  }

  void startAutoRefresh() {
    _autoRefreshTimer?.cancel();
    _autoRefreshTimer = Timer.periodic(const Duration(seconds: 30), (_) {
      if (state.hasValue) {
        refresh();
      }
    });
  }

  void stopAutoRefresh() {
    _autoRefreshTimer?.cancel();
    _autoRefreshTimer = null;
  }

  void addOptimisticMessage(String message) {
    final currentState = state.asData?.value;
    if (currentState == null) return;

    final now = DateTime.now();
    final formattedDate = "${now.year.toString().padLeft(4, '0')}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";

    final optimisticMessage = ChatMessageEntity(
      type: ChatMessageType.send,
      message: message,
      createdAt: formattedDate,
    );

    final updatedMessages = Paged<ChatMessageEntity>(
      items: [...currentState.items, optimisticMessage],
      page: currentState.page,
      hasMore: currentState.hasMore,
    );

    state = AsyncData(updatedMessages);
  }

  void removeOptimisticMessage(String message) {
    final currentState = state.asData?.value;
    if (currentState == null) return;

    final updatedItems = currentState.items
        .where((msg) => !(msg.message == message && msg.type == ChatMessageType.send))
        .toList();

    final updatedMessages = Paged<ChatMessageEntity>(
      items: updatedItems,
      page: currentState.page,
      hasMore: currentState.hasMore,
    );

    state = AsyncData(updatedMessages);
  }

  Future<void> sendMessage(String message) async {
    if (message.trim().isEmpty) return;

    try {
      final dataSource = ref.read(chatRemoteDataSourceProvider);
      await dataSource.sendMessage(userId, message);
      
    } catch (error) {
      rethrow;
    }
  }
}