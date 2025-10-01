import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class DetailTaskHeaderWidget extends StatelessWidget {
  const DetailTaskHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: AppColors.shadow,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            infoCard(
              Icons.calendar_month_rounded,
              'Batas Pengumpulan',
              '25 Juni 2025',
            ),
            SizedBox(height: 8.h),
            infoCard(
              Icons.assignment_outlined,
              'Judul Tugas',
              'Rafi Mahadika Sujiantooooooooooooooooooooooooo',
            ),
            SizedBox(height: 8.h),
            infoCard(
              Icons.person,
              'Guru Pengajar',
              'Bapak Transbara Al-Fatih anjay mabar',
            ),
          ],
        ),
      ),
    );
  }
  
  infoCard(
    IconData icon,
    String title,
    String value,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: AppColors.inactiveColor,
            ),
            SizedBox(width: 12.w),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.mainText,
              ),
            ),
          ],
        ),
        SizedBox(width: 60.w),
        Flexible(
          child: Text(
            value,
            maxLines: 2,
            textAlign: TextAlign.end,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.mainColorSidigs,
            ),
          ),
        ),
      ],
    );
  }

}
