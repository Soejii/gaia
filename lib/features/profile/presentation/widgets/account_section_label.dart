import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class AccountSectionLabel extends StatelessWidget {
  final String label;

  const AccountSectionLabel({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: AppColors.secondaryText,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
