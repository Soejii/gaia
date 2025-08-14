import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/core/constant/app_colors.dart';

class ScheduleEmptyState extends StatelessWidget {
  final String day;

  const ScheduleEmptyState({
    super.key,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/img_tidak_ada_pelajaran.png',
          
            width: 200.w,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Wah, Hari ini tidak ada jadwal...',
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              height: 1.0,
              letterSpacing: 0,
              color: AppColors.secondaryText,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            'Kamu bisa belajar sendiri di rumah',
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              height: 1.0,
              letterSpacing: 0,
              color: AppColors.secondaryText,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
