import 'package:gaia/features/edutainment/domain/entities/edutainment_entity.dart';
import 'package:gaia/features/edutainment/domain/type/edutainment_type.dart';
import 'package:gaia/features/edutainment/presentation/providers/edutainment_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edutainment_controller.g.dart';

@Riverpod(keepAlive: true)
class EdutainmentController extends _$EdutainmentController {

  @override
  Future<List<EdutainmentEntity>> build() async {
    ref.keepAlive();
    return _fetch(EdutainmentType.all, 1);
  }

  Future<List<EdutainmentEntity>> _fetch(EdutainmentType type, int page) async {
    final usecase = ref.read(getListEdutainmentUsecaseProvider);
    final res = await usecase.getListEdutainment(type: type, page : page);

    return res.fold(
      (failure) => throw failure,
      (entity) => entity,
    );
  }

  Future<void> refreshData(EdutainmentType type) async {
    state = const AsyncValue<List<EdutainmentEntity>>.loading()
        .copyWithPrevious(state);
    try {
      final items = await _fetch(type, 1);
      state = AsyncValue.data(items);
    } catch (e, st) {
      state = AsyncValue<List<EdutainmentEntity>>.error(e, st)
          .copyWithPrevious(state);
    }
  }
}
