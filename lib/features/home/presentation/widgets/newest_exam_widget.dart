import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/home/presentation/widgets/task_card.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class NewestExamWidget extends StatelessWidget {
  const NewestExamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latihan Soal Tebaru',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainText,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainColorSidigs,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          const ExamCard(),
        ],
      ),
    );
  }
}
