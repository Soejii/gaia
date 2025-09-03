import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';
import 'package:gaia/shared/core/infrastructure/routes/route_name.dart';
import 'package:go_router/go_router.dart';

class CreateDiscussionCard extends StatelessWidget {
  const CreateDiscussionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 48.h,
            width: 48.h,
            child: CircleAvatar(
              foregroundImage: const NetworkImage(
                '',
              ),
              backgroundImage: AssetImage(
                AssetsHelper.imgProfilePlaceholder,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          GestureDetector(
            onTap: () {
              context.pushNamed(RouteName.createDiscussion);
            },
            child: Expanded(
              child: Container(
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.secondaryText, width: 1),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    'Apa yang ingin kamu diskusikan?',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryText,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
