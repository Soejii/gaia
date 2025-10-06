import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class MessageInputWidget extends StatelessWidget {
  final TextEditingController textController;
  final FocusNode focusNode;
  final VoidCallback onSend;

  const MessageInputWidget({
    super.key,
    required this.textController,
    required this.focusNode,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey[300]!, width: 1),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: textController,
              focusNode: focusNode,
              decoration: InputDecoration(
                hintText: 'Ketik pesan...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24.r),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24.r),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24.r),
                  borderSide: const BorderSide(color: AppColors.mainColorSidigs),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              ),
              maxLines: null,
              textInputAction: TextInputAction.send,
              onSubmitted: (_) => onSend(),
            ),
          ),
          SizedBox(width: 8.w),
          GestureDetector(
            onTap: onSend,
            child: Container(
              padding: EdgeInsets.all(12.w),
              decoration: const BoxDecoration(
                color: AppColors.mainColorSidigs,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.send,
                color: Colors.white,
                size: 20.r,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
