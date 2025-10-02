import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';

class CollectTaskScreen extends HookWidget {
  const CollectTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Kerjakan Tugas',
        leadingIcon: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              'Catatan',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 6.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.inactiveColor,
                  width: 1,
                ),
              ),
              child: TextField(
                controller: textController,
                minLines: 2,
                maxLines: 15,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.mainText,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Tulis Catatan Kamu Disini!',
                  hintStyle: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainText,
                    fontStyle: FontStyle.italic,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
                ),
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(210, 239, 255, 1),
                        Color.fromRGBO(255, 255, 255, 0),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Image.asset(AssetsHelper.icUpload),
                ),
                SizedBox(width: 14.w),
                Text(
                  'Upload File',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondaryColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80.h,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: AppColors.invertedShadow,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: 56.h,
              decoration: BoxDecoration(
                color: AppColors.mainColorSidigs,
                boxShadow: AppColors.shadow,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Kerjakan',
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
      ),
    );
  }
}
