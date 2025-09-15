import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/features/subject/domain/entities/module_entity.dart';
import 'package:gaia/features/subject/presentation/providers/subject_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'module_controller.g.dart';

@riverpod
class ModuleController extends _$ModuleController {
  Timer? _ttl; // for optional TTL keepAlive
  KeepAliveLink? _link;
  @override
  Future<List<ModuleEntity>> build(int idSubject) {
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

  Future<List<ModuleEntity>> _fetch(int idSubject) async {
    final useCase = ref.read(getListModuleUsecaseProvider);
    final res = await useCase.getListModule(idSubject);

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
