import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gaia/features/profile/presentation/providers/profile_providers.dart';
import 'package:gaia/features/profile/presentation/widgets/change_password_form_field.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';

class ChangePasswordScreen extends HookConsumerWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPasswordController = useTextEditingController();
    final newPasswordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final showPassword = useState(false);
    final isLoading = useState(false);

    final currentPasswordError = useState<String?>(null);
    final newPasswordError = useState<String?>(null);
    final confirmPasswordError = useState<String?>(null);

    useEffect(() {
      void clearCurrentPasswordError() {
        if (currentPasswordError.value != null) {
          currentPasswordError.value = null;
        }
      }

      void clearNewPasswordError() {
        if (newPasswordError.value != null) {
          newPasswordError.value = null;
        }
      }

      void clearConfirmPasswordError() {
        if (confirmPasswordError.value != null) {
          confirmPasswordError.value = null;
        }
      }

      currentPasswordController.addListener(clearCurrentPasswordError);
      newPasswordController.addListener(clearNewPasswordError);
      confirmPasswordController.addListener(clearConfirmPasswordError);

      return () {
        currentPasswordController.removeListener(clearCurrentPasswordError);
        newPasswordController.removeListener(clearNewPasswordError);
        confirmPasswordController.removeListener(clearConfirmPasswordError);
      };
    }, []);


    bool isCurrentPasswordValid() {
      final value = currentPasswordController.text;
      if (value.isEmpty) {
        currentPasswordError.value = 'Kata sandi lama tidak boleh kosong';
        return false;
      }
      currentPasswordError.value = null;
      return true;
    }

    bool isNewPasswordValid() {
      final value = newPasswordController.text;
      if (value.isEmpty) {
        newPasswordError.value = 'Kata sandi baru tidak boleh kosong';
        return false;
      }
      if (value.length < 8) {
        newPasswordError.value = 'Kata sandi baru minimal 8 karakter';
        return false;
      }
      newPasswordError.value = null;
      return true;
    }

    bool isConfirmPasswordValid() {
      final value = confirmPasswordController.text;
      final newPass = newPasswordController.text;
      if (value.isEmpty) {
        confirmPasswordError.value = 'Konfirmasi kata sandi tidak boleh kosong';
        return false;
      }
      if (value != newPass) {
        confirmPasswordError.value = 'Konfirmasi kata sandi tidak sama';
        return false;
      }
      confirmPasswordError.value = null;
      return true;
    }

    bool validateForm() {
      final isCurrentValid = isCurrentPasswordValid();
      final isNewValid = isNewPasswordValid();
      final isConfirmValid = isConfirmPasswordValid();

      return isCurrentValid && isNewValid && isConfirmValid;
    }

    void clearForm() {
      currentPasswordController.clear();
      newPasswordController.clear();
      confirmPasswordController.clear();
    }

    void showSnackBar(String message, {bool isError = false}) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: isError ? Colors.red : AppColors.green,
        ),
      );
    }

    void handleError(String error) {
      final errorLower = error.toLowerCase();
      if (errorLower.contains('old password') ||
          errorLower.contains('wrong password')) {
        currentPasswordError.value = 'Kata sandi lama tidak tepat';
      } else {
        showSnackBar('Gagal mengubah kata sandi', isError: true);
      }
    }

    void handleSuccess(String message) {
      showSnackBar(message);
      clearForm();
      Navigator.pop(context);
    }

    Future<void> handleChangePassword() async {
      if (!validateForm()) return;

      isLoading.value = true;

      final result = await ref.read(profileRepositoryProvider).changePassword(
            currentPassword: currentPasswordController.text,
            newPassword: newPasswordController.text,
            confirmPassword: confirmPasswordController.text,
          );

      result.fold(
        (failure) => handleError(failure.toString()),
        (message) => handleSuccess(message),
      );

      isLoading.value = false;
    }

    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Ubah Kata Sandi',
        leadingIcon: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ChangePasswordFormField(
                controller: currentPasswordController,
                label: 'Kata Sandi Lama',
                hintText: '**********',
                obscureText: !showPassword.value,
                errorText: currentPasswordError.value,
              ),
              SizedBox(height: 16.h),
              ChangePasswordFormField(
                controller: newPasswordController,
                label: 'Kata Sandi Baru',
                hintText: '**********',
                obscureText: !showPassword.value,
                errorText: newPasswordError.value,
              ),
              SizedBox(height: 16.h),
              ChangePasswordFormField(
                controller: confirmPasswordController,
                label: 'Konfirmasi Kata Sandi',
                hintText: '**********',
                obscureText: !showPassword.value,
                errorText: confirmPasswordError.value,
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Checkbox(
                    value: showPassword.value,
                    onChanged: (value) {
                      showPassword.value = value ?? false;
                    },
                    activeColor: AppColors.mainColorSidigs,
                  ),
                  Text(
                    'Tampilkan kata sandi',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryText,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              ElevatedButton(
                onPressed: isLoading.value ? null : handleChangePassword,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColorSidigs,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 48.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: isLoading.value
                    ? SizedBox(
                        height: 20.h,
                        width: 20.w,
                        child: const CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : Text(
                        'Ubah Kata Sandi',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
