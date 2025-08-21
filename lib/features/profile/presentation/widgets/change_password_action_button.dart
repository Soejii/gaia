import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class ChangePasswordActionButton extends HookWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isEnabled;

  const ChangePasswordActionButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final isButtonPressed = useState(false);

    return GestureDetector(
      onTapDown: isEnabled && !isLoading ? (_) => isButtonPressed.value = true : null,
      onTapUp: isEnabled && !isLoading ? (_) => isButtonPressed.value = false : null,
      onTapCancel: () => isButtonPressed.value = false,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        width: double.infinity,
        height: 48.h,
        margin: EdgeInsets.only(
          top: isButtonPressed.value ? 2.h : 0,
          bottom: isButtonPressed.value ? 0 : 2.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: isEnabled ? AppColors.mainColorSidigs : AppColors.inactiveColor,
          boxShadow: isButtonPressed.value ? [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              offset: const Offset(0, 1),
              blurRadius: 2,
            ),
          ] : [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              offset: const Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),
          child: InkWell(
            borderRadius: BorderRadius.circular(10.r),
            splashColor: Colors.white.withValues(alpha: 0.2),
            highlightColor: Colors.white.withValues(alpha: 0.1),
            onTap: isEnabled && !isLoading ? onPressed : null,
            child: Container(
              height: double.infinity,
              alignment: Alignment.center,
              child: isLoading
                  ? SizedBox(
                      height: 20.h,
                      width: 20.w,
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : Text(
                      text,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
