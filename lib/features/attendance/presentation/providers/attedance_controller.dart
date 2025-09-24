import 'package:gaia/features/attendance/domain/entities/attendance_entitiy.dart';
import 'package:gaia/features/attendance/presentation/providers/attedance_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attedance_controller.g.dart';

@riverpod
class AttendanceController extends _$AttendanceController {
  @override
  Future<List<AttendanceEntity>> build() async {
    final usecase = ref.read(getHistoryAttendanceUsecaseProvider);
    final result = await usecase.getAttendanceHistory();

    return result.fold(
      (failure) => throw failure,
      (entities) => entities,
    );
  }
}