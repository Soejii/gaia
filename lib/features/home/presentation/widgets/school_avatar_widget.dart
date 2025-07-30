import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class SchoolAvatarWidget extends StatelessWidget {
  const SchoolAvatarWidget({super.key,required this.imgUrl});
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 25.w,
      top: 75,
      child: SizedBox(
        height: 56.h,
        width: 56.h,
        child: CircleAvatar(
          foregroundImage: NetworkImage(
            imgUrl,
          ),
          backgroundImage: AssetImage(
            AssetsHelper.imgProfilePlaceholder,
          ),
        ),
      ),
    );
  }
}
