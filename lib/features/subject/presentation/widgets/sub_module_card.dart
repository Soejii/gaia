import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class SubModuleCard extends HookWidget {
  const SubModuleCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isReady = useState(true);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            width: 1,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 24.w),
          SizedBox(
            height: 24.h,
            width: 24.h,
            child: Image.asset(
              isReady.value
                  ? AssetsHelper.imgSubjectModulActive
                  : AssetsHelper.imgSubjectModulInactive,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              'Simple Past Tensessssssssssssssssssssssssssssssssss',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.secondaryText,
              ),
            ),
          ),
          SizedBox(width: 8.w),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: isReady.value ? AppColors.green : AppColors.inactiveColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
              child: Text(
                isReady.value ? 'Telah Tayang' : 'Belum Tayang',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
