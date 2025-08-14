import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/core/constant/app_colors.dart';

class ScheduleFilterTabs extends StatelessWidget {
  final int selectedDayIndex;
  final Function(int) onDaySelected;

  const ScheduleFilterTabs({
    super.key,
    required this.selectedDayIndex,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    final days = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];

    return Container(
      height: 70.h,

      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: AppColors.shadow,
      ),
      padding: EdgeInsets.symmetric(
          vertical: 15.h, horizontal: 16.w),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: days.length,
        itemBuilder: (context, index) {
          final isSelected = selectedDayIndex == index;
          return Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: GestureDetector(
              onTap: () => onDaySelected(index),
              child: Container(
                constraints: BoxConstraints(minWidth: 60.w),
                height: 40.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.mainColorSidigs
                      : Colors.transparent,
                  border: Border.all(
                    color: AppColors.mainColorSidigs,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Center(
                  child: Text(
                    days[index],
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      color:
                          isSelected ? Colors.white : AppColors.mainColorSidigs,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
