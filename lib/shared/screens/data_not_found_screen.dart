import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class DataNotFoundScreen extends StatelessWidget {
  const DataNotFoundScreen({super.key,required this.dataType});
  final String dataType;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AssetsHelper.imgDataNotFound),
        Text(
          'Data $dataType Tidak Tersedia',
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.inactiveColor,
          ),
        )
      ],
    );
  }
}
