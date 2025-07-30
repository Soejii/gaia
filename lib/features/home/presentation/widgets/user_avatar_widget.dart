import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class UserAvatarWidget extends StatelessWidget {
  const UserAvatarWidget({super.key, required this.imgurl});
  final String imgurl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 75,
      left: 25.w,
      child: Container(
        height: 56,
        width: 56,
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          foregroundImage:
              NetworkImage(imgurl),
          backgroundImage: AssetImage(
            AssetsHelper.imgProfilePlaceholder,
          ),
        ),
      ),
    );
  }
}
