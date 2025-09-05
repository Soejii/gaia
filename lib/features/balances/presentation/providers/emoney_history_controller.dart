import 'package:gaia/features/balances/domain/entities/emoney_history_entity.dart';
import 'package:gaia/features/balances/domain/usecases/get_emoney_history_usecase.dart';
import 'package:gaia/features/balances/presentation/providers/balance_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'emoney_history_controller.g.dart';

@riverpod
class EmoneyHistoryController extends _$EmoneyHistoryController {
  @override
  Future<List<EmoneyHistoryEntity>> build() async {
    return _fetchEmoneyHistory();
  }

  Future<List<EmoneyHistoryEntity>> _fetchEmoneyHistory() async {
    final usecase = ref.read(getEmoneyHistoryUsecaseProvider);
    final result = await usecase.getEmoneyHistory();
    return result.fold(
      (failure) => throw failure,
      (data) => data,
    );
  }

  Future<void> refreshHistory() async {
    ref.invalidateSelf();
  }
}
