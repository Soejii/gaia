import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 32.h,
                width: 32.h,
                child: CircleAvatar(
                  foregroundImage: const NetworkImage(
                    '',
                  ),
                  backgroundImage: AssetImage(
                    AssetsHelper.imgProfilePlaceholder,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                'Rafi Sujianto',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainText,
                ),
              ),
              SizedBox(width: 7.w),
              Container(
                width: 3.h,
                height: 3.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.secondaryText,
                ),
              ),
              SizedBox(width: 7.w),
              Text(
                '12 Jam Yang Lalu',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondaryText,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.w, right: 20.w),
            child: Text(
              'Hello teman-teman, ada info terbaru untuk kegiatan Class Meeting minggu depan. Setiap anak diwajibkan bawa jajan sendiri-sendiri ya, biar gak minta-minta.. wkwkwkw ',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.mainText,
              ),
            ),
          )
        ],
      ),
    );
  }
}
