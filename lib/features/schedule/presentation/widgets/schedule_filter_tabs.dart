import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class ScheduleFilterTabs extends StatelessWidget {
  final TabController tabController;
  final List<String> weekDays;

  const ScheduleFilterTabs({
    super.key,
    required this.tabController,
    required this.weekDays,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: AppColors.shadow,
      ),
      padding: EdgeInsets.only(left: 15.w, top: 16.h, bottom: 18.h, right: 16.w),
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        labelColor: Colors.white,
        unselectedLabelColor: AppColors.mainColorSidigs,
        labelStyle: TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
        indicator: const BoxDecoration(color: Colors.transparent),
        dividerColor: Colors.transparent,
        tabs: weekDays.asMap().entries.map((entry) {
          final index = entry.key;
          final day = entry.value;
          return Tab(
            child: Padding(
              padding: EdgeInsets.only(right: index < weekDays.length - 1 ? 8.w : 0),
              child: AnimatedBuilder(
                animation: tabController,
                builder: (context, child) {
                  final isSelected = tabController.index == index;
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3.h),
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.mainColorSidigs : Colors.transparent,
                      border: Border.all(
                        color: AppColors.mainColorSidigs,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(11.r),
                    ),
                    child: Text(
                      day,
                      style: TextStyle(
                        color: isSelected ? Colors.white : AppColors.mainColorSidigs,
                        fontFamily: 'OpenSans',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
