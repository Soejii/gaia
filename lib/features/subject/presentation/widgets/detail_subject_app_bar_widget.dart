import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/subject/presentation/widgets/detail_subject_title_card.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class DetailSubjectAppBarWidget extends StatelessWidget {
  const DetailSubjectAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180.h,
      color: AppColors.mainColorSidigs,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32.h),
            const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            SizedBox(height: 20.h),
            const DetailSubjectTitleCard()
          ],
        ),
      ),
    );
  }
}
