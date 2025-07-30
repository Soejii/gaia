import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/home/presentation/widgets/announcement_card.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class AnnouncementWidget extends StatelessWidget {
  const AnnouncementWidget({super.key, required this.imgUrl});
  final String imgUrl;

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
                'Pengumuman',
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
          AnnouncementCard(imgUrl: imgUrl),
        ],
      ),
    );
  }
}
