import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gaia/features/profile/presentation/providers/change_password_controller.dart';
import 'package:gaia/features/profile/presentation/widgets/change_password_form_section.dart';
import 'package:gaia/features/profile/presentation/widgets/change_password_notification.dart';
import 'package:gaia/features/profile/presentation/widgets/change_password_action_button.dart';
import 'package:gaia/features/profile/presentation/widgets/change_password_checkbox.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';

class ChangePasswordScreen extends HookConsumerWidget {
  const ChangePasswordScreen({super.key});

  String _getErrorMessage(String error) {
    return error.replaceAll('Exception:', '').trim();
  }

  Future<void> _handleSubmit({
    required BuildContext context,
    required WidgetRef ref,
    required ValueNotifier<bool> shouldValidate,
    required ValueNotifier<bool> isSubmitting,
    required TextEditingController oldPasswordController,
    required TextEditingController newPasswordController,
    required TextEditingController confirmPasswordController,
  }) async {
    if (isSubmitting.value) return;

    shouldValidate.value = true;

    final oldPassword = oldPasswordController.text.trim();
    final newPassword = newPasswordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    bool hasValidationError = false;

    if (oldPassword.isEmpty) {
      hasValidationError = true;
    }
    if (newPassword.isEmpty) {
      hasValidationError = true;
    }
    if (newPassword.length < 8 && newPassword.isNotEmpty) {
      hasValidationError = true;
    }
    if (confirmPassword.isEmpty) {
      hasValidationError = true;
    }
    if (newPassword != confirmPassword && confirmPassword.isNotEmpty) {
      hasValidationError = true;
    }

    if (hasValidationError) {
      await Future.delayed(const Duration(milliseconds: 100));
      shouldValidate.value = false;
      return;
    }

    isSubmitting.value = true;
    shouldValidate.value = false;

    try {
      await ref.read(changePasswordControllerProvider.notifier).changePassword(
            oldPassword: oldPassword,
            newPassword: newPassword,
          );

      if (context.mounted) {
        final state = ref.read(changePasswordControllerProvider);

        if (state.hasValue && !state.hasError) {
          final successMessage = state.value ?? 'Kata sandi berhasil diubah!';
          ChangePasswordNotification.showSuccess(context, successMessage);
          oldPasswordController.clear();
          newPasswordController.clear();
          confirmPasswordController.clear();
        } else if (state.hasError) {
          final errorMessage = state.error.toString();
          ChangePasswordNotification.showError(
              context, _getErrorMessage(errorMessage));
        }
      }
    } catch (e) {
      if (context.mounted) {
        final errorMessage = e.toString();
        ChangePasswordNotification.showError(
            context, _getErrorMessage(errorMessage));
      }
    } finally {
      isSubmitting.value = false;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final oldPasswordController = useTextEditingController();
    final newPasswordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final oldPasswordVisible = useState(false);
    final newPasswordVisible = useState(false);
    final confirmPasswordVisible = useState(false);
    final showAllPasswords = useState(false);
    final shouldValidate = useState(false);
    final isSubmitting = useState(false);

    final changePasswordState = ref.watch(changePasswordControllerProvider);

    useEffect(() {
      oldPasswordVisible.value = showAllPasswords.value;
      newPasswordVisible.value = showAllPasswords.value;
      confirmPasswordVisible.value = showAllPasswords.value;
      return null;
    }, [showAllPasswords.value]);

    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Ubah Kata Sandi',
        leadingIcon: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              ChangePasswordFormSection(
                oldPasswordController: oldPasswordController,
                newPasswordController: newPasswordController,
                confirmPasswordController: confirmPasswordController,
                oldPasswordVisible: oldPasswordVisible.value,
                newPasswordVisible: newPasswordVisible.value,
                confirmPasswordVisible: confirmPasswordVisible.value,
                forceValidate: shouldValidate.value,
              ),
              SizedBox(height: 20.h),
              ChangePasswordCheckbox(
                value: showAllPasswords.value,
                onChanged: (value) => showAllPasswords.value = value ?? false,
                label: 'Tampilkan kata sandi',
              ),
              SizedBox(height: 32.h),
              ChangePasswordActionButton(
                text: 'Ubah Kata Sandi',
                isLoading: changePasswordState.isLoading || isSubmitting.value,
                isEnabled:
                    !changePasswordState.isLoading && !isSubmitting.value,
                onPressed: () async {
                  await _handleSubmit(
                    context: context,
                    ref: ref,
                    shouldValidate: shouldValidate,
                    isSubmitting: isSubmitting,
                    oldPasswordController: oldPasswordController,
                    newPasswordController: newPasswordController,
                    confirmPasswordController: confirmPasswordController,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
