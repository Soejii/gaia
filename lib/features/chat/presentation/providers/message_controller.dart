import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gaia/features/chat/domain/entities/contact_entity.dart';
import 'package:gaia/features/chat/domain/entities/message_entity.dart';
import 'package:gaia/features/chat/presentation/providers/chat_providers.dart';
import 'package:gaia/shared/presentation/paged.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_controller.freezed.dart';
part 'message_controller.g.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState({
    ContactEntity? user,
    @Default(Paged<MessageEntity>(items: [], page: 1, hasMore: false)) Paged<MessageEntity> messages,
  }) = _MessageState;
}

@riverpod
class MessageController extends _$MessageController {
  Timer? _ttl; 
  Timer? _refreshTimer;
  KeepAliveLink? _link;

  int page = 1;
  static const _pageSize = 20;
  bool _loadingMore = false;
  bool _isAutoRefreshEnabled = false;

  @override
  AsyncValue<MessageState> build(int userId) {
    _link ??= ref.keepAlive();
    ref.onCancel(() {
      _refreshTimer?.cancel();
      _isAutoRefreshEnabled = false;
      _ttl = Timer(const Duration(minutes: 5), () {
        _link?.close();
        _link = null;
      });
    });
    ref.onResume(() => _ttl?.cancel());
    ref.onDispose(() {
      _refreshTimer?.cancel();
      _ttl?.cancel();
    });
    _firstLoad();
    return const AsyncLoading();
  }

  Future<({ContactEntity user, List<MessageEntity> messages})> _fetch(int page) async {
    final uc = ref.read(getMessagesUsecaseProvider);
    final either = await uc.getMessages(userId: userId, page: page);
    return either.fold((e) => throw e, (response) => response);
  }

  Future<void> _firstLoad() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final response = await _fetch(1);
      return MessageState(
        user: response.user,
        messages: Paged(
          items: response.messages,
          page: 1,
          hasMore: response.messages.length >= _pageSize,
        ),
      );
    });
  }

  Future<void> refresh() async => _firstLoad();

  Future<void> loadMore() async {
    final data = state.asData?.value;
    if (data == null || _loadingMore || !data.messages.hasMore) return;

    _loadingMore = true;
    state = AsyncValue.data(data.copyWith(
      messages: data.messages.copyWith(isMoreLoading: true, error: null),
    ));
    try {
      final next = data.messages.page + 1;
      final response = await _fetch(next);
      final updated = data.copyWith(
        messages: data.messages.copyWith(
          items: [...data.messages.items, ...response.messages],
          page: next,
          hasMore: response.messages.length >= _pageSize,
          isMoreLoading: false,
        ),
      );
      state = AsyncValue.data(updated);
      page = next;
    } catch (e, st) {
      state = AsyncValue<MessageState>.error(e, st).copyWithPrevious(state);
    } finally {
      _loadingMore = false;
    }
  }

  void startAutoRefresh() {
    if (_isAutoRefreshEnabled) return;
    
    _isAutoRefreshEnabled = true;
    _refreshTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_isAutoRefreshEnabled && state.hasValue) {
        _silentRefresh();
      }
    });
  }

  void stopAutoRefresh() {
    _isAutoRefreshEnabled = false;
    _refreshTimer?.cancel();
    _refreshTimer = null;
  }

  Future<void> _silentRefresh() async {
    try {
      final response = await _fetch(1);
      final data = state.asData?.value;
      if (data != null) {
        final updated = data.copyWith(
          user: response.user,
          messages: data.messages.copyWith(
            items: response.messages,
            page: 1,
            hasMore: response.messages.length >= _pageSize,
          ),
        );
        state = AsyncValue.data(updated);
      }
    } catch (e) {
    }
  }
}