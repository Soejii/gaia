import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gaia/features/schedule/domain/entities/schedule_entity.dart';
import 'package:gaia/features/schedule/presentation/providers/schedule_controller.dart';
import 'package:gaia/features/schedule/presentation/widgets/schedule_card.dart';
import 'package:gaia/features/schedule/presentation/widgets/schedule_empty_state.dart';
import 'package:gaia/features/schedule/presentation/widgets/schedule_error_state.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class ScheduleContent extends ConsumerWidget {
  final DayOfWeek day;

  const ScheduleContent({
    super.key,
    required this.day,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheduleAsync = ref.watch(scheduleControllerProvider(day));
    
    return scheduleAsync.when(
      loading: () => const Center(
        child: CircularProgressIndicator(
          color: AppColors.mainColorSidigs,
        ),
      ),
      error: (error, stack) => ScheduleErrorState(day: day),
      data: (schedules) {
        if (schedules.isEmpty) {
          return ScheduleEmptyState(day: day.displayName);
        }

        return ListView.builder(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            top: 16.h,
          ),
          itemCount: schedules.length,
          itemBuilder: (context, index) {
            final schedule = schedules[index];
            return ScheduleCard(schedule: schedule);
          },
        );
      },
    );
  }
}
