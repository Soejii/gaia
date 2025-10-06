import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/chat/domain/entities/chat_entity.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:intl/intl.dart';

class ChatListItem extends StatelessWidget {
  final ChatEntity chat;

  const ChatListItem({
    super.key,
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: Colors.grey[200],
            backgroundImage: chat.photo != null && chat.photo!.isNotEmpty
                ? NetworkImage(chat.photo!)
                : null,
            child: chat.photo == null || chat.photo!.isEmpty
                ? Icon(
                    Icons.person,
                    size: 24.r,
                    color: Colors.grey[600],
                  )
                : null,
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chat.name ?? 'Pengguna',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.mainText,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  chat.lastChat ?? 'Tidak ada pesan',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondaryText,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Text(
            _formatTime(chat.lastChatDate ?? ''),
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.secondaryText,
            ),
          ),
        ],
      ),
    );
  }

  String _formatTime(String dateTime) {
    if (dateTime.isEmpty) return '';
    try {
      final DateTime parsedDate = DateTime.parse(dateTime);
      return DateFormat('HH:mm').format(parsedDate);
    } catch (e) {
      return '';
    }
  }
}
