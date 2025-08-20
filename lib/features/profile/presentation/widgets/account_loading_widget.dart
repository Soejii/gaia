import 'package:flutter/material.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class AccountLoadingWidget extends StatelessWidget {
  const AccountLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.mainColorSidigs,
      ),
    );
  }
}
