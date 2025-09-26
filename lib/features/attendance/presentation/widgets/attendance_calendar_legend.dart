import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/attendance/domain/type/attendance_status.dart';
import 'package:gaia/features/attendance/domain/type/attendance_status_extension.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class AttendanceCalendarLegend extends StatelessWidget {
  const AttendanceCalendarLegend({super.key});

  @override
  Widget build(BuildContext context) {
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
}