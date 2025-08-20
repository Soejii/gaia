import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/profile/presentation/widgets/account_section_label.dart';
import 'package:gaia/features/profile/presentation/widgets/account_info_box.dart';

class AccountInfoSection extends StatelessWidget {
  final String label;
  final String value;

  const AccountInfoSection({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AccountSectionLabel(label: label),
        SizedBox(height: 8.h),
        AccountInfoBox(value: value),
      ],
    );
  }
}
