import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationShell extends StatelessWidget {
  const BottomNavigationShell({super.key, required this.shell});
  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: shell, // shows current branch’s Navigator
      bottomNavigationBar: Container(
        height: 80.h,
        width: double.infinity,
        color: AppColors.mainColorSidigs,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              navigationButton(
                0,
                AssetsHelper.icHome,
                'Beranda',
              ),
              navigationButton(
                1,
                AssetsHelper.icActivity,
                'Aktifitas',
              ),
              navigationButton(
                2,
                AssetsHelper.icChat,
                'Chat',
              ),
              navigationButton(
                3,
                AssetsHelper.icProfile,
                'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

  navigationButton(
    int index,
    String icon,
    String label,
  ) {
    return GestureDetector(
      onTap: () {
        shell.goBranch(index);
      },
      child: Container(
        height: 60.h,
        width: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color:
              index == shell.currentIndex ? Colors.white : Colors.transparent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 24.h,
              width: 24.h,
              child: SvgPicture.asset(
                icon,
                colorFilter: ColorFilter.mode(
                  index == shell.currentIndex
                      ? AppColors.mainColorSidigs
                      : Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              label,
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: index == shell.currentIndex
                    ? AppColors.mainColorSidigs
                    : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
