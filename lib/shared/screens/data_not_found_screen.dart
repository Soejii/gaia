import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class DataNotFoundScreen extends StatelessWidget {
  const DataNotFoundScreen({super.key, required this.dataType});
  final String dataType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 100.h),
        SizedBox(
          height: 300.h,
          width: 300.w,
          child: Image.asset(AssetsHelper.imgDataNotFound),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Text(
            'Data $dataType Tidak Tersedia',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.inactiveColor,
            ),
          ),
        )
      ],
    );
  }
}
