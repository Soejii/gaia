import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/schedule_entity.dart';
import '../../../../shared/core/constant/app_colors.dart';

class ScheduleCard extends StatelessWidget {
  final ScheduleEntity schedule;

  const ScheduleCard({
    super.key,
    required this.schedule,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color: AppColors.mainColorSidigs,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: AppColors.scheduleCardShadow,
      ),
      child: Row(
        children: [
          Container(
            width: 80.w,
            height: 80.h,
            margin: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              gradient: AppColors.scheduleCardGradient,
              boxShadow: AppColors.shadow,
            ),
            child: schedule.subjectImage.isNotEmpty
                ? Container(
                    padding: EdgeInsets.all(8.r),
                    child: Image.asset(
                      schedule.subjectImage,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(
                          Icons.book,
                          color: AppColors.mainColorSidigs,
                          size: 32.sp,
                        );
                      },
                    ),
                  )
                : Container(
                    padding: EdgeInsets.all(8.r),
                    child: Icon(
                      Icons.book,
                      color: AppColors.mainColorSidigs,
                      size: 32.sp,
                    ),
                  ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 16.r, top: 16.r, bottom: 16.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    schedule.subjectName,
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                      letterSpacing: 0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    schedule.teacherName,
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                      letterSpacing: 0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    '${schedule.startTime}-${schedule.endTime} WIB',
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                      letterSpacing: 0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
