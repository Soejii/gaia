import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/features/discussion/domain/entity/discussion_entity.dart';
import 'package:gaia/features/discussion/presentation/providers/discussion_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'discussion_subject_controller.g.dart';

@riverpod
class DiscussionSubjectController extends _$DiscussionSubjectController {
  Timer? _ttl; // for optional TTL keepAlive
  KeepAliveLink? _link;
  @override
  Future<List<DiscussionEntity>> build(int idSubject) {
    _link ??= ref.keepAlive();
    ref.onCancel(() {
      _ttl = Timer(const Duration(minutes: 5), () {
        _link?.close();
        _link = null;
      });
    });
    ref.onResume(() => _ttl?.cancel());
    ref.onDispose(() => _ttl?.cancel());
    return _fetch(idSubject);
  }

  Future<List<DiscussionEntity>> _fetch(int idSubject) async {
    final useCase = ref.read(getListDiscussionUsecaseProvider);
    final res = await useCase.getListDiscussion('subject', idSubject: idSubject);

    return res.fold(
      (failure) => throw failure,
      (entity) => entity,
    );
  }

  Future<void> refresh(int idSubject) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetch(idSubject));
  }
}
