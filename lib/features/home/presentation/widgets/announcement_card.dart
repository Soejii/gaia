import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({super.key,required this.imgUrl});
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: AppColors.shadow,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              imgUrl,
              errorBuilder: (context, error, stackTrace) => Image.asset(
                AssetsHelper.imgAnnouncementPlaceholder,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 7.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pelaksaan Ujian akhir semester',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.mainText,
                    ),
                  ),
                  Text(
                    '27 Agustus 2025',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.mainText,
                    ),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis turpis morbi ut. Enim convallis pulvinar commodo egestas. ',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryText,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
