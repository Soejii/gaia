import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class SchoolCardWidget extends StatelessWidget {
  const SchoolCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          border: Border.all(
            width: 1.w,
            color: AppColors.mainColorSidigs,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.h,
                width: 30.h,
                child: Image.network(
                    'https://static.wikitide.net/balatromodswiki/b/bd/Blueprint_Retexture_%28HD_Balatro%29.png'),
              ),
              SizedBox(width: 8.w),
              Text(
                'SMK Telkom Malang',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.mainColorSidigs,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
