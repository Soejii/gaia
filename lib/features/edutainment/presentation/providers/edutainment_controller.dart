import 'package:gaia/features/edutainment/domain/entities/edutainment_entity.dart';
import 'package:gaia/features/edutainment/presentation/providers/edutainment_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edutainment_controller.g.dart';

@Riverpod(keepAlive: true)
class EdutainmentController extends _$EdutainmentController {
  int _page = 1;
  String? _type;

  @override
  Future<List<EdutainmentEntity>> build() async {
    ref.keepAlive();
    _page = 1;
    _type = 'all';
    return _fetch(_type!, _page);
  }

  Future<List<EdutainmentEntity>> _fetch(String type, int page) async {
    final usecase = ref.read(getListEdutainmentUsecaseProvider);
    final res = await usecase.getListEdutainment(type, page);

    return res.fold(
      (failure) => throw failure,
      (entity) => entity,
    );
  }

  Future<void> refreshData() async {
    state = const AsyncValue<List<EdutainmentEntity>>.loading()
        .copyWithPrevious(state);
    try {
      final items = await _fetch(_type!, 1);
      state = AsyncValue.data(items);
    } catch (e, st) {
      state = AsyncValue<List<EdutainmentEntity>>.error(e, st)
          .copyWithPrevious(state);
    }
  }
}
