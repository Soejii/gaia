import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class ChangePasswordCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String label;

  const ChangePasswordCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: AppColors.mainColorSidigs,
          side: BorderSide(color: AppColors.inactiveColor),
        ),
        SizedBox(width: 8.w),
        Text(
          label,
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.secondaryText,
          ),
        ),
      ],
    );
  }
}
