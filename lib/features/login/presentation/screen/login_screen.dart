import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/app/theme/brand_palette.dart';
import 'package:gaia/features/login/presentation/providers/login_controller.dart';
import 'package:gaia/features/login/presentation/widgets/password_form.dart';
import 'package:gaia/features/login/presentation/widgets/username_form.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';
import 'package:gaia/shared/core/types/failure.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    final loginController = ref.watch(loginControllerProvider);

    ref.listen(
      loginControllerProvider,
      (previous, next) {
        next.whenOrNull(
          error: (error, stackTrace) {
            if (error is UnauthorizedFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Username/Password Salah',
                  ),
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    '$error',
                  ),
                ),
              );
            }
          },
        );
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: loginController.maybeWhen(
        orElse: () => ListView(
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
                    ref.read(loginControllerProvider.notifier).login(
                          usernameController.text.trim(),
                          passwordController.text.trim(),
                        );
                  }
                },
                child: Container(
                  height: 56.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: context.brand.primary,
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
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
