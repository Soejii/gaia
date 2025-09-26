import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gaia/features/attendance/domain/entities/attendance_entitiy.dart';
import 'package:gaia/features/attendance/domain/type/attendance_status.dart';
import 'package:gaia/features/attendance/domain/type/attendance_status_extension.dart';
import 'package:gaia/features/attendance/presentation/providers/attedance_controller.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class AttendanceCalendarWidget extends ConsumerStatefulWidget {
  const AttendanceCalendarWidget({super.key});

  @override
  ConsumerState<AttendanceCalendarWidget> createState() =>
      _AttendanceCalendarWidgetState();
}

class _AttendanceCalendarWidgetState
    extends ConsumerState<AttendanceCalendarWidget> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final attendanceAsync = ref.watch(attendanceControllerProvider);

    return attendanceAsync.when(
      data: (attendanceList) {
        final attendanceMap = _createAttendanceMap(attendanceList);

        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCalendar(attendanceMap),
              SizedBox(height: 24.h),
              _buildLegend(),
              SizedBox(height: 24.h),
              _buildSelectedDayDetails(attendanceMap),
            ],
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error: $error'),
            ElevatedButton(
              onPressed: () => ref.refresh(attendanceControllerProvider),
              child: const Text('Coba Lagi'),
            ),
          ],
        ),
      ),
    );
  }

  Map<DateTime, AttendanceEntity> _createAttendanceMap(
      List<AttendanceEntity> attendanceList) {
    final Map<DateTime, AttendanceEntity> attendanceMap = {};
    for (final attendance in attendanceList) {
      try {
        final date = DateTime.parse(attendance.date);
        final dateKey = DateTime(date.year, date.month, date.day);
        attendanceMap[dateKey] = attendance;
      } catch (e) {
        debugPrint('Error parsing date: ${attendance.date}');
      }
    }
    return attendanceMap;
  }

  Widget _buildCalendar(Map<DateTime, AttendanceEntity> attendanceMap) {
    return TableCalendar<AttendanceEntity>(
      firstDay: DateTime.utc(2020, 1, 1),
      lastDay: DateTime.utc(2030, 12, 31),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      calendarFormat: CalendarFormat.month,
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
      calendarBuilders: CalendarBuilders<AttendanceEntity>(
        defaultBuilder: (context, day, focusedDay) {
          final attendanceEntity =
              attendanceMap[DateTime(day.year, day.month, day.day)];
          return AttendanceCalendarDay(
            day: day,
            attendanceEntity: attendanceEntity,
            isToday: false,
          );
        },
        todayBuilder: (context, day, focusedDay) {
          final attendanceEntity =
              attendanceMap[DateTime(day.year, day.month, day.day)];
          return AttendanceCalendarDay(
            day: day,
            attendanceEntity: attendanceEntity,
            isToday: true,
          );
        },
        selectedBuilder: (context, day, focusedDay) {
          final attendanceEntity =
              attendanceMap[DateTime(day.year, day.month, day.day)];
          return AttendanceCalendarDay(
            day: day,
            attendanceEntity: attendanceEntity,
            isToday: isSameDay(day, DateTime.now()),
          );
        },
      ),
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        leftChevronIcon: Icon(Icons.chevron_left, color: Colors.black),
        rightChevronIcon: Icon(Icons.chevron_right, color: Colors.black),
      ),
      daysOfWeekStyle: const DaysOfWeekStyle(
        weekdayStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        weekendStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildLegend() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  _legendItem(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF3229A0), Color(0xFF832AA3)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    label: 'Hari ini',
                  ),
                  SizedBox(height: 8.h),
                  _legendItem(
                    color: AttendanceStatus.sick.color,
                    label: AttendanceStatus.sick.displayName,
                  ),
                  SizedBox(height: 8.h),
                  _legendItem(
                    color: AttendanceStatus.permit.color,
                    label: AttendanceStatus.permit.displayName,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  _legendItem(
                    color: AttendanceStatus.checkedOut.color,
                    label: 'Hadir',
                  ),
                  SizedBox(height: 8.h),
                  _legendItem(
                    color: AttendanceStatus.absent.color,
                    label: 'Tanpa keterangan',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _legendItem({
    Color? color,
    Gradient? gradient,
    required String label,
  }) {
    return Row(
      children: [
        Container(
          width: 16.w,
          height: 16.h,
          decoration: BoxDecoration(
            color: color,
            gradient: gradient,
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.secondaryText,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSelectedDayDetails(Map<DateTime, AttendanceEntity> attendanceMap) {
    if (_selectedDay == null) return const SizedBox.shrink();

    final attendanceEntity = attendanceMap[
        DateTime(_selectedDay!.year, _selectedDay!.month, _selectedDay!.day)];
    final dayName = DateFormat('EEEE', 'id_ID').format(_selectedDay!);
    final fullDate = DateFormat('dd MMMM yyyy', 'id_ID').format(_selectedDay!);

    String statusDisplay = '-';

    if (attendanceEntity != null) {
      if (attendanceEntity.checkedInTime != null &&
          attendanceEntity.checkedOutTime != null) {
        statusDisplay = 'Hadir';
      } else {
        statusDisplay = attendanceEntity.status.displayName;
      }
    }

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: Colors.black.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Hari/Tanggal: ',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondaryText,
                ),
              ),
              Text(
                '$dayName, $fullDate',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.secondaryText,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text(
                'Status: ',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondaryText,
                ),
              ),
              Text(
                statusDisplay,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.secondaryText,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Keterangan: ',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondaryText,
                ),
              ),
              Expanded(
                child: Text(
                  attendanceEntity?.notes ?? '-',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.secondaryText,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AttendanceCalendarDay extends StatelessWidget {
  final DateTime day;
  final AttendanceEntity? attendanceEntity;
  final bool isToday;

  const AttendanceCalendarDay({
    super.key,
    required this.day,
    required this.attendanceEntity,
    required this.isToday,
  });

  @override
  Widget build(BuildContext context) {
    Color? backgroundColor;
    Gradient? gradient;

    if (isToday) {
      gradient = const LinearGradient(
        colors: [Color(0xFF3229A0), Color(0xFF832AA3)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
    } else if (attendanceEntity != null) {
      if (attendanceEntity!.checkedInTime != null &&
          attendanceEntity!.checkedOutTime != null) {
        backgroundColor = AttendanceStatus.checkedOut.color;
      } else {
        backgroundColor = attendanceEntity!.status.color;
      }
    }

    return Container(
      margin: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: backgroundColor,
        gradient: gradient,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(
        child: Text(
          '${day.day}',
          style: TextStyle(
            color: (isToday || attendanceEntity != null)
                ? Colors.white
                : Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}