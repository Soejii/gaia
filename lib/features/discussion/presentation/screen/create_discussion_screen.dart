import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';

class CreateDiscussionScreen extends HookWidget {
  const CreateDiscussionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Buat Diskusi',
        leadingIcon: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 42.h,
                  width: 42.h,
                  child: CircleAvatar(
                    foregroundImage: const NetworkImage(
                      '',
                    ),
                    backgroundImage: AssetImage(
                      AssetsHelper.imgProfilePlaceholder,
                    ),
                  ),
                ),
                SizedBox(width: 7.w),
                Text(
                  'Rafi Mahadika Sujianto',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.mainText,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              constraints: BoxConstraints(maxHeight: 56.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.secondaryText, width: 1),
              ),
              child: TextField(
                controller: textController,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.mainText,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Tulis Diskusi Kamu Disini!',
                  hintStyle: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainText,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 10.h)
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80.h,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          child: Container(
            width: double.infinity,
            height: 56.h,
            decoration: const BoxDecoration(
                color: AppColors.mainColorSidigs, boxShadow: AppColors.shadow),
            child: Center(
              child: Text(
                'Posting',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
