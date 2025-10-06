import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/features/chat/domain/entities/contact_entity.dart';
import 'package:gaia/features/chat/presentation/providers/chat_providers.dart';
import 'package:gaia/shared/presentation/paged.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact_controller.g.dart';

@riverpod
class ContactController extends _$ContactController {
  Timer? _ttl; // for optional TTL keepAlive
  KeepAliveLink? _link;

  int page = 1;
  static const _pageSize = 100;
  bool _loadingMore = false;

  @override
  AsyncValue<Paged<ContactEntity>> build() {
    _link ??= ref.keepAlive();
    ref.onCancel(() {
      _ttl = Timer(const Duration(minutes: 5), () {
        _link?.close();
        _link = null;
      });
    });
    ref.onResume(() => _ttl?.cancel());
    ref.onDispose(() => _ttl?.cancel());
    _firstLoad(); // kick first page
    return const AsyncLoading(); // so UI can use `.when(loading: ...)`
  }

  Future<List<ContactEntity>> _fetch(int page) async {
    final uc = ref.read(getContactsUsecaseProvider);
    final either = await uc.getContact(page: page);
    return either.fold((e) => throw e, (list) => list);
  }

  Future<void> _firstLoad() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final items = await _fetch(1);
      return Paged(
        items: items,
        page: 1,
        hasMore: items.length >= _pageSize,
      );
    });
  }

  Future<void> refresh() async {
    page = 1;
    _loadingMore = false;
    await _firstLoad();
  }

  Future<void> loadMore() async {
    final data = state.asData?.value;
    if (data == null || _loadingMore || !data.hasMore) return;

    _loadingMore = true;
    state = AsyncValue.data(data.copyWith(isMoreLoading: true, error: null));
    try {
      final next = data.page + 1;
      final items = await _fetch(next);
      final updated = data.copyWith(
        items: [...data.items, ...items],
        page: next,
        hasMore: items.length >= _pageSize,
        isMoreLoading: false,
      );
      state = AsyncValue.data(updated);
    } catch (e, st) {
      // keep previous list, surface error on state
      state =
          AsyncValue<Paged<ContactEntity>>.error(e, st).copyWithPrevious(state);
    } finally {
      _loadingMore = false;
    }
  }
}