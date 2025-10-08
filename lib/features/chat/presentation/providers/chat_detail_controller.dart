import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/features/chat/domain/entity/message_entity.dart';
import 'package:gaia/features/chat/domain/entity/chat_detail_entity.dart';
import 'package:gaia/features/chat/presentation/providers/chat_providers.dart';
import 'package:gaia/features/chat/presentation/providers/chat_controller.dart';
import 'package:gaia/shared/presentation/paged.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_detail_controller.g.dart';

@riverpod
class ChatDetailController extends _$ChatDetailController {
  Timer? _ttl;
  Timer? _autoRefreshTimer;
  KeepAliveLink? _link;
  int _currentPage = 1;

  @override
  Future<ChatDetailEntity> build(int userId) {
    _link ??= ref.keepAlive();
    ref.onCancel(() {
      _ttl = Timer(const Duration(minutes: 5), () {
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

  Future<ChatDetailEntity> _fetch({int page = 1}) async {
    final uc = ref.read(getMessagesUsecaseProvider);
    final either = await uc.getMessages(userId: userId, page: page);
    
    return either.fold(
      (failure) => throw failure,
      (response) => ChatDetailEntity(
        contact: response.user,
        messages: Paged(
          items: response.messages,
          page: page,
          hasMore: response.messages.length >= 20,
        ),
      ),
    );
  }

  Future<void> refresh() async {
    _currentPage = 1;
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetch(page: 1));
  }

  Future<void> loadMore() async {
    final currentState = state.asData?.value;
    if (currentState == null || !currentState.messages.hasMore) return;

    try {
      _currentPage++;
      final newData = await _fetch(page: _currentPage);
      final updatedMessages = Paged<MessageEntity>(
        items: [...currentState.messages.items, ...newData.messages.items],
        page: _currentPage,
        hasMore: newData.messages.hasMore,
      );

      state = AsyncData(currentState.copyWith(messages: updatedMessages));
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

    final optimisticMessage = MessageEntity(
      type: 'send',
      message: message,
      createdAt: DateTime.now(),
    );

    final updatedMessages = Paged<MessageEntity>(
      items: [...currentState.messages.items, optimisticMessage],
      page: currentState.messages.page,
      hasMore: currentState.messages.hasMore,
    );

    state = AsyncData(currentState.copyWith(messages: updatedMessages));
  }

  void removeOptimisticMessage(String message) {
    final currentState = state.asData?.value;
    if (currentState == null) return;

    final updatedItems = currentState.messages.items
        .where((msg) => !(msg.message == message && msg.type == 'send'))
        .toList();

    final updatedMessages = Paged<MessageEntity>(
      items: updatedItems,
      page: currentState.messages.page,
      hasMore: currentState.messages.hasMore,
    );

    state = AsyncData(currentState.copyWith(messages: updatedMessages));
  }

  Future<void> sendMessage(String message) async {
    if (message.trim().isEmpty) return;

    try {
      final dataSource = ref.read(chatRemoteDataSourceProvider);
      await dataSource.sendMessage(userId, message);
      ref.invalidate(chatControllerProvider);
    } catch (error) {
      rethrow;
    }
  }
}