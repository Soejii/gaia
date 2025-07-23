import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/login/widgets/password_form.dart';
import 'package:gaia/features/login/widgets/username_form.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 130.h),
          Center(
            child: SizedBox(
              height: 97.h,
              width: 80.w,
              child: Image.asset(
                AssetsHelper.imgLogo,
              ),
            ),
          ),
          Center(
            child: Image.asset(
              AssetsHelper.imgLogoName,
            ),
          ),
          SizedBox(height: 106.h),
          UsernameForm(controller: usernameController),
          SizedBox(height: 16.h),
          PasswordForm(controller: passwordController),
          SizedBox(height: 64.h),
          //** LOGIN BUTTON */
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              height: 56.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.mainColorSidigs,
              ),
              child: Center(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
