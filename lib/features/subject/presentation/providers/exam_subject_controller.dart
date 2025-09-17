import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/features/activity/domain/entities/exam_entity.dart';
import 'package:gaia/features/activity/domain/type/exam_type.dart';
import 'package:gaia/features/subject/presentation/providers/subject_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exam_subject_controller.g.dart';

@riverpod
class ExamSubjectController extends _$ExamSubjectController {
  Timer? _ttl; // for optional TTL keepAlive
  KeepAliveLink? _link;
  @override
  Future<List<ExamEntity>> build(int idSubject, ExamType type) {
    _link ??= ref.keepAlive();
    ref.onCancel(() {
      _ttl = Timer(const Duration(minutes: 5), () {
        _link?.close();
        _link = null;
      });
    });
    ref.onResume(() => _ttl?.cancel());
    ref.onDispose(() => _ttl?.cancel());
    return _fetch(idSubject, type);
  }

  Future<List<ExamEntity>> _fetch(int idSubject, ExamType type) async {
    final useCase = ref.read(getListSubjectExamUsecaseProvider);
    final res = await useCase.getListExam(idSubject, type);

    return res.fold(
      (failure) => throw failure,
      (entity) => entity,
    );
  }

  Future<void> refresh(int idSubject, ExamType type) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetch(idSubject, type));
  }
}
