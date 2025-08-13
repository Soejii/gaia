import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class DetailAnnouncementImage extends StatelessWidget {
  const DetailAnnouncementImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: Image.network(
          'entity.photo,',
          errorBuilder: (context, error, stackTrace) => Image.asset(
            AssetsHelper.imgAnnouncementPlaceholder,
          ),
        ),
      ),
    );
  }
}
