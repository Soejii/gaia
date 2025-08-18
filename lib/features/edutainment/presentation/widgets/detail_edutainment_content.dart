import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class DetailEdutainmentContent extends StatelessWidget {
  const DetailEdutainmentContent({
    super.key,
    required this.title,
    required this.date,
    required this.desc,
    required this.link,
  });
  final String title;
  final String date;
  final String desc;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.mainText,
            ),
          ),
          Text(
            date,
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.mainText,
            ),
          ),
          SizedBox(height: 17.h),
          Text(
            desc,
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.mainText,
            ),
          ),
          Text(
            link,
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(24, 157, 205, 1),
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
