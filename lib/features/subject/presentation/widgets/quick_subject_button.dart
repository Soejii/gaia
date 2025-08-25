import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class QuickSubjectButton extends StatelessWidget {
  const QuickSubjectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 96.h,
          width: 96.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(201, 238, 255, 1),
                Color.fromRGBO(200, 238, 255, 0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: SizedBox(
              height: 80.h,
              width: 80.h,
              child: Image.asset(
                AssetsHelper.imgSubjectKimia,
              ),
            ),
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          'Kimia',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.secondaryText,
          ),
        )
      ],
    );
  }
}
