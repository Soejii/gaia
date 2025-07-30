import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:go_router/go_router.dart';

class QuickHomeButton extends StatelessWidget {
  const QuickHomeButton({
    super.key,
    required this.path,
    required this.label,
    required this.icon,
  });
  final String path;
  final String label;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            context.push(path);
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: AppColors.mainColorGradient),
            // child: Padding(
            //   padding: const EdgeInsets.all(7.35),
            //   child: SvgPicture.asset(
            //     '',
            //     height: 25,
            //   ),
            // ),
          ),
        ),
        SizedBox(
          height: 6.h,
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.secondaryText,
          ),
        )
      ],
    );
  }
}
