import 'package:flutter/material.dart';
import 'package:gaia/features/attendance/domain/type/attendance_type.dart';
import 'package:gaia/features/attendance/presentation/widgets/attendance_history_widget.dart';
import 'package:gaia/features/attendance/presentation/widgets/attendance_calendar_widget.dart';

class AttendanceContentScreen extends StatelessWidget {
  final AttendanceType type;

  const AttendanceContentScreen({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AttendanceType.history:
        return const AttendanceHistoryWidget();
      case AttendanceType.calendar:
        return const AttendanceCalendarWidget();
    }
  }
}