import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';

class DetailTaskScreen extends StatelessWidget {
  const DetailTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Detail Tugas',
        leadingIcon: true,
      ),
      body: ListView(
        children: [
          Container(
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
                  infoCard(
                    Icons.assignment_outlined,
                    'Judul Tugas',
                    'Rafi Mahadika Sujiantooooooooooooooooooooooooo',
                  ),
                  infoCard(
                    Icons.person,
                    'Guru Pengajar',
                    'Bapak Transbara Al-Fatih anjay mabar',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  infoCard(IconData icon, String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
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
        SizedBox(width: 20.w),
        const Expanded(child: SizedBox()),
        Flexible(
          child: Text(
            value,
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
