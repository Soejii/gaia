import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';
import 'dart:math' as math;

class ChooseDiscussionScreen extends StatelessWidget {
  const ChooseDiscussionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Pilih Diskusi',
        leadingIcon: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h),
        ],
      ),
    );
  }

  chooseButton(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.h),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color.fromRGBO(0, 0, 0, 0.1),
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(210, 239, 255, 1),
                      Color.fromRGBO(255, 255, 255, 0),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: SizedBox(
                    height: 27.h,
                    width: 20.w,
                    child: SvgPicture.asset(
                      AssetsHelper.icChooseDiscussion,
                      colorFilter: ColorFilter.mode(
                        index == 1
                            ? const Color.fromRGBO(53, 40, 161, 1)
                            : const Color.fromRGBO(78, 172, 220, 1),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 13.w),
              Text(
                index == 1 ? 'Diskusi Kelas' : 'Diskusi Mapel',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.mainText,
                ),
              ),
              const Expanded(child: SizedBox()),
              Transform.rotate(
                angle: 180 * math.pi / 180,
                child: const Icon(Icons.arrow_back_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
