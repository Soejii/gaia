import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/features/school/domain/entities/school_entity.dart';

class SchoolSocialMediaBox extends StatelessWidget {
  final SchoolEntity school;

  const SchoolSocialMediaBox({
    super.key,
    required this.school,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(10.r),
      ),
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Facebook: ${(school.facebook.isNotEmpty && school.facebook != '-') ? school.facebook : '-'}',
            style: TextStyle(
              color: AppColors.mainText,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Instagram: ${(school.instagram.isNotEmpty && school.instagram != '-') ? school.instagram : '-'}',
            style: TextStyle(
              color: AppColors.mainText,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'YouTube: ${(school.youtube.isNotEmpty && school.youtube != '-') ? school.youtube : '-'}',
            style: TextStyle(
              color: AppColors.mainText,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
