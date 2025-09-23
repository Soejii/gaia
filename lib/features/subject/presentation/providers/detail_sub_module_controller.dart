import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/features/subject/domain/entities/detail_sub_module_entity.dart';
import 'package:gaia/features/subject/presentation/providers/subject_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_sub_module_controller.g.dart';

@riverpod
class DetailSubModuleController extends _$DetailSubModuleController {
  Timer? _ttl; // for optional TTL keepAlive
  KeepAliveLink? _link;
  @override
  Future<DetailSubModuleEntity> build(int idSubModule) {
    _link ??= ref.keepAlive();
    ref.onCancel(() {
      _ttl = Timer(const Duration(minutes: 5), () {
        _link?.close();
        _link = null;
      });
    });
    ref.onResume(() => _ttl?.cancel());
    ref.onDispose(() => _ttl?.cancel());
    return _fetch(idSubModule);
  }

  Future<DetailSubModuleEntity> _fetch(int idSubModule) async {
    final useCase = ref.read(getDetailSubModuleUsecaseProvider);
    final res = await useCase.getDetailSubModule(idSubModule);

    return res.fold(
      (failure) => throw failure,
      (entity) => entity,
    );
  }

  Future<void> refresh(int idSubModule) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetch(idSubModule));
  }
}
