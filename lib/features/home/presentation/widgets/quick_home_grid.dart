import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/app/theme/brand_palette.dart';
import 'package:gaia/features/home/presentation/widgets/quick_home_button.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';
import 'package:gaia/shared/core/infrastructure/routes/route_name.dart';

class QuickHomeGrid extends StatelessWidget {
  const QuickHomeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<QuickHomeButton> listHomeButton = [
      QuickHomeButton(
        path: RouteName.subjectPicker,
        label: 'Mata Pelajaran',
        icon: AssetsHelper.imgHomeButtonMapel,
      ),
      QuickHomeButton(
        path: RouteName.chooseDiscussion,
        label: 'Diskusi',
        icon: AssetsHelper.imgHomeButtonDiskusi,
      ),
      QuickHomeButton(
        path: RouteName.attendance,
        label: 'Kehadiran',
        icon: AssetsHelper.imgHomeButtonKehadiran,
      ),
      QuickHomeButton(
        path: RouteName.schedule,
        label: 'Jadwal Pelajaran',
        icon: AssetsHelper.imgHomeButtonJadwal,
      ),
      QuickHomeButton(
        path: RouteName.listAnnouncement,
        label: 'Pengumuman',
        icon: AssetsHelper.imgHomeButtonPengumuman,
      ),
      QuickHomeButton(
        path: RouteName.listEdutainment,
        label: 'Edutainment',
        icon: AssetsHelper.imgHomeButtonEdutainment,
      ),
      QuickHomeButton(
        path: RouteName.balance,
        label: 'Keuangan',
        icon: AssetsHelper.imgHomeButtonKeuangan,
      ),
      QuickHomeButton(
        path: '',
        label: 'CBT',
        icon: AssetsHelper.imgHomeButtonCbt,
      ),
    ];
    return Positioned(
      left: 20.w,
      top: 164,
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: context.brand.shadow,
        ),
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          childAspectRatio: 0.88,
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
