import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/task/presentation/widgets/detail_task_header_info_card.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class DetailTaskHeaderSkeletonWidget extends StatelessWidget {
  const DetailTaskHeaderSkeletonWidget({super.key});

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
            const DetailTaskHeaderInfoCard(
              icon: Icons.calendar_month_rounded,
              title: 'Batas Pengumpulan',
              value: '............',
            ),
            SizedBox(height: 8.h),
            const DetailTaskHeaderInfoCard(
              icon: Icons.assignment_outlined,
              title: 'Judul Tugas',
              value: '............',
            ),
            SizedBox(height: 8.h),
            const DetailTaskHeaderInfoCard(
              icon: Icons.person,
              title: 'Guru Pengajar',
              value: '............',
            ),
          ],
        ),
      ),
    );
  }
}
