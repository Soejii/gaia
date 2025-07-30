import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/home/presentation/widgets/quick_home_button.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class QuickHomeGrid extends StatelessWidget {
  const QuickHomeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    const List<QuickHomeButton> listHomeButton = [
      QuickHomeButton(path: '', label: 'Mata Pelajaran', icon: ''),
      QuickHomeButton(path: '', label: 'Diskusi', icon: ''),
      QuickHomeButton(path: '', label: 'Kehadiran', icon: ''),
      QuickHomeButton(path: '', label: 'Jadwal Pelajaran', icon: ''),
      QuickHomeButton(path: '', label: 'Pengumuman', icon: ''),
      QuickHomeButton(path: '', label: 'Edutainment', icon: ''),
      QuickHomeButton(path: '', label: 'Keuangan', icon: ''),
      QuickHomeButton(path: '', label: 'CBT', icon: ''),
    ];
    return Positioned(
      left: 20.w,
      top: 164,
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: AppColors.shadow,
        ),
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          children: listHomeButton
              .map(
                (e) =>
                    QuickHomeButton(path: e.path, label: e.label, icon: e.icon),
              )
              .toList(),
        ),
      ),
    );
  }
}
