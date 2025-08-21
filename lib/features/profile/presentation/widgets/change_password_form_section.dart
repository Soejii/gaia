import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/profile/presentation/widgets/change_password_info_section.dart';

class ChangePasswordFormSection extends HookWidget {
  final TextEditingController oldPasswordController;
  final TextEditingController newPasswordController;
  final TextEditingController confirmPasswordController;
  final bool oldPasswordVisible;
  final bool newPasswordVisible;
  final bool confirmPasswordVisible;
  final bool forceValidate;

  const ChangePasswordFormSection({
    super.key,
    required this.oldPasswordController,
    required this.newPasswordController,
    required this.confirmPasswordController,
    required this.oldPasswordVisible,
    required this.newPasswordVisible,
    required this.confirmPasswordVisible,
    required this.forceValidate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ChangePasswordInfoSection(
          label: 'Kata Sandi Lama',
          controller: oldPasswordController,
          isVisible: oldPasswordVisible,
          forceValidate: forceValidate,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Kata sandi lama harus diisi';
            }
            return null;
          },
        ),
        SizedBox(height: 16.h),
        ChangePasswordInfoSection(
          label: 'Kata Sandi Baru',
          controller: newPasswordController,
          isVisible: newPasswordVisible,
          forceValidate: forceValidate,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Kata sandi baru harus diisi';
            }
            if (value.length < 8) {
              return 'Kata sandi minimal 8 karakter';
            }
            return null;
          },
        ),
        SizedBox(height: 16.h),
        ChangePasswordInfoSection(
          label: 'Konfirmasi Kata Sandi',
          controller: confirmPasswordController,
          isVisible: confirmPasswordVisible,
          dependentController: newPasswordController,
          forceValidate: forceValidate,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Konfirmasi kata sandi harus diisi';
            }
            if (value != newPasswordController.text) {
              return 'Konfirmasi kata sandi tidak sesuai';
            }
            return null;
          },
        ),
      ],
    );
  }
}
