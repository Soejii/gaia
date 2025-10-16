import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/app/theme/brand_palette.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class DigitalMagazinesCard extends StatelessWidget {
  const DigitalMagazinesCard({super.key, required this.imgUrl});
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            'Majalah Digital',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: context.brand.textMain,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(
            constraints: BoxConstraints(
              minHeight: 180.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: context.brand.shadow,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imgUrl,
                errorBuilder: (context, error, stackTrace) => Image.asset(
                  AssetsHelper.imgAnnouncementPlaceholder,
                ),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    height: 200.h,
                    color: Colors.white,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
