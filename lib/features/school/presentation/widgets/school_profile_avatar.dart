import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class SchoolProfileAvatar extends StatelessWidget {
  final String photoUrl;

  const SchoolProfileAvatar({
    super.key,
    required this.photoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144.w,
      height: 144.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: AppColors.shadow,
        color: Colors.white,
      ),
      child: ClipOval(
        child: Image.network(
          photoUrl,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(
              Icons.school,
              size: 72,
              color: AppColors.mainColorSidigs,
            );
          },
        ),
      ),
    );
  }
}
