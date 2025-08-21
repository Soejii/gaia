import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class ChangePasswordInfoSection extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final bool isVisible;
  final String? Function(String?)? validator;
  final TextEditingController? dependentController;
  final bool forceValidate;

  const ChangePasswordInfoSection({
    super.key,
    required this.label,
    required this.controller,
    required this.isVisible,
    this.validator,
    this.dependentController,
    this.forceValidate = false,
  });

  @override
  State<ChangePasswordInfoSection> createState() => _ChangePasswordInfoSectionState();
}

class _ChangePasswordInfoSectionState extends State<ChangePasswordInfoSection> {
  String? errorMessage;

  @override
  void didUpdateWidget(ChangePasswordInfoSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.forceValidate && !oldWidget.forceValidate) {
      _validateField();
    }
  }

  void _validateField() {
    if (widget.validator != null) {
      final error = widget.validator!(widget.controller.text);
      if (mounted && error != errorMessage) {
        setState(() {
          errorMessage = error;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            color: AppColors.secondaryText,
            fontSize: 12.sp,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 4.h),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFF9F9F9),
            borderRadius: BorderRadius.circular(10.r),
          ),
          padding: EdgeInsets.all(20.w),
          child: TextFormField(
            controller: widget.controller,
            obscureText: !widget.isVisible,
            onChanged: (value) {
              if (errorMessage != null) {
                setState(() {
                  errorMessage = null;
                });
              }
            },
            style: TextStyle(
              color: AppColors.secondaryText,
              fontSize: 14.sp,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w400,
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ),
        if (errorMessage != null) ...[
          SizedBox(height: 4.h),
          Text(
            errorMessage!,
            style: TextStyle(
              color: Colors.red,
              fontSize: 12.sp,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ],
    );
  }
}
