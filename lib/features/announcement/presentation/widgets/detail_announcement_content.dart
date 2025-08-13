import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class DetailAnnouncementContent extends StatelessWidget {
  const DetailAnnouncementContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rapat Bulanan Sidigs anjay',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.mainText,
            ),
          ),
          Text(
            '12 Agustus 2025',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.mainText,
            ),
          ),
          SizedBox(height: 17.h),
          Text(
            'Rapat Bulanan Pegawai akan diadakan pada hari senin, tanggal 1 November 2021 di Aula Sekolah',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.mainText,
            ),
          ),
        ],
      ),
    );
  }
}
