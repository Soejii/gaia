import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class DetailSubjectTitleCard extends StatelessWidget {
  const DetailSubjectTitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 72.h,
          width: 72.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(201, 238, 255, 1),
                Color.fromRGBO(200, 238, 255, 0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: SizedBox(
              height: 56.h,
              width: 56.h,
              child: Image.asset(
                AssetsHelper.imgSubjectPlaceholder,
              ),
            ),
          ),
        ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bahasa Inggris',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              '0 Modul | 0 Submodul | 0 Latihan Soal',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
