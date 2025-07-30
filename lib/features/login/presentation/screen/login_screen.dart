import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/login/domain/entities/login_entity.dart';
import 'package:gaia/features/login/presentation/providers/login_notifier.dart';
import 'package:gaia/features/login/presentation/widgets/password_form.dart';
import 'package:gaia/features/login/presentation/widgets/username_form.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    final loginState = ref.watch(loginNotifierProvider);
    final loginNotifier = ref.read(loginNotifierProvider.notifier);

    ref.listen<AsyncValue<LoginEntity?>>(
      loginNotifierProvider,
      (prev, next) {
        if (next.hasError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(next.error.toString())),
          );
        }
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: loginState.when(
        data: (_) => ListView(
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
            SizedBox(
              height: 45.h,
              width: 120.w,
              child: Center(
                child: Image.asset(
                  AssetsHelper.imgLogoName,
                ),
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
              child: GestureDetector(
                onTap: () {
                  if (usernameController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                  } else {
                    loginNotifier.login(
                      username: usernameController.text.trim(),
                      password: passwordController.text.trim(),
                    );
                  }
                },
                child: Container(
                  height: 56.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.mainColorSidigs,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 5), // x = 0, y = -5
                        blurRadius: 0,
                        spreadRadius: 0,
                      ),
                    ],
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
            ),
          ],
        ),
        error: (error, stackTrace) => Center(
          child: Text('Login failed: $error , $stackTrace'),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
