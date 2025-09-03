import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/discussion/presentation/widgets/comment_card.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class DiscussionCard extends StatelessWidget {
  const DiscussionCard({super.key});

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
              SizedBox(width: 18.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rafi Mahadika Sujianto',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.mainText,
                    ),
                  ),
                  Text(
                    'Kelas: XII RPL 1',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.mainText,
                    ),
                  ),
                  Text(
                    '12 Jam Yang Lalu',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryText,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            'Hello teman-teman, ada info terbaru untuk kegiatan Class Meeting minggu depan. Setiap anak diwajibkan bawa jajan sendiri-sendiri ya, biar gak minta-minta.. wkwkwkw ',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.mainText,
            ),
          ),
          SizedBox(height: 4.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '2 Suka',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondaryText,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                '3 Komentar',
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
          Container(
            width: double.infinity,
            height: 1.h,
            color: const Color.fromRGBO(37, 119, 195, 0.1),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.thumb_up_alt_outlined,
                  color: AppColors.inactiveColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.comment,
                  color: AppColors.inactiveColor,
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 1.h,
            color: const Color.fromRGBO(37, 119, 195, 0.1),
          ),
          SizedBox(height: 10.h),
          const CommentCard()
        ],
      ),
    );
  }
}
