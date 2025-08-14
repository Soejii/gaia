import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gaia/features/schedule/domain/entities/schedule_entity.dart';
import 'package:gaia/features/schedule/presentation/providers/schedule_controller.dart';
import 'package:gaia/features/schedule/presentation/widgets/schedule_filter_tabs.dart';
import 'package:gaia/features/schedule/presentation/widgets/schedule_card.dart';
import 'package:gaia/features/schedule/presentation/widgets/schedule_empty_state.dart';
import 'package:gaia/features/schedule/presentation/widgets/schedule_error_state.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class ScheduleScreen extends HookConsumerWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDay = useState(DayOfWeek.monday);
    final scheduleAsync = ref.watch(scheduleControllerProvider(selectedDay.value));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: AppColors.shadow,
          ),
          child: AppBar(
            title: Text(
              'Jadwal Pelajaran',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: false,
          ),
        ),
      ),
      body: Column(
        children: [
          ScheduleFilterTabs(
            selectedDayIndex: selectedDay.value.index,
            onDaySelected: (index) {
              selectedDay.value = DayOfWeek.values[index];
        
            },
          ),


          Expanded(
            child: scheduleAsync.when(
              loading: () => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.mainColorSidigs,
                ),
              ),
              error: (error, stack) => ScheduleErrorState(day: selectedDay.value),
              data: (schedules) {
                if (schedules.isEmpty) {
                  return ScheduleEmptyState(
                    day: _getDayShortName(selectedDay.value),
                  );
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
            ),
          ),
        ],
      ),
    );
  }

  String _getDayShortName(DayOfWeek day) {
    switch (day) {
      case DayOfWeek.monday:
        return 'Senin';
      case DayOfWeek.tuesday:
        return 'Selasa';
      case DayOfWeek.wednesday:
        return 'Rabu';
      case DayOfWeek.thursday:
        return 'Kamis';
      case DayOfWeek.friday:
        return 'Jumat';
      case DayOfWeek.saturday:
        return 'Sabtu';
      case DayOfWeek.sunday:
        return 'Minggu';
    }
  }
}