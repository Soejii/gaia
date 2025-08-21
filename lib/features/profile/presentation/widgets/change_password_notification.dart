import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class ChangePasswordNotification {
  static void showSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).clearMaterialBanners();

    OverlayEntry? overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).padding.top + kToolbarHeight + 16.h,
        left: 16.w,
        right: 16.w,
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(12.r),
          shadowColor: Colors.black26,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            decoration: BoxDecoration(
              color: AppColors.successColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(6.w),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.check_circle,
                      color: Colors.white, size: 18.sp),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    message,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      height: 1.3,
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                GestureDetector(
                  onTap: () => overlayEntry?.remove(),
                  child: Container(
                    padding: EdgeInsets.all(6.w),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Icon(Icons.close, color: Colors.white, size: 16.sp),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(overlayEntry);

    Future.delayed(const Duration(seconds: 5), () {
      overlayEntry?.remove();
    });
  }

  static void showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).clearMaterialBanners();

    OverlayEntry? overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).padding.top + kToolbarHeight + 16.h,
        left: 16.w,
        right: 16.w,
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(12.r),
          shadowColor: Colors.black26,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            decoration: BoxDecoration(
              color: AppColors.errorColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(6.w),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.error_outline,
                      color: Colors.white, size: 18.sp),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    message,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      height: 1.3,
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                GestureDetector(
                  onTap: () => overlayEntry?.remove(),
                  child: Container(
                    padding: EdgeInsets.all(6.w),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Icon(Icons.close, color: Colors.white, size: 16.sp),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(overlayEntry);

    Future.delayed(const Duration(seconds: 5), () {
      overlayEntry?.remove();
    });
  }
}
