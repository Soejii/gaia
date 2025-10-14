import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gaia/features/chat/domain/entity/chat_entity.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/infrastructure/routes/route_name.dart';
import 'package:intl/intl.dart';

class ChatListItem extends ConsumerWidget {
  final ChatEntity chat;

  const ChatListItem({
    super.key,
    required this.chat,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contact = chat.contact;
    if (contact == null) return const SizedBox.shrink();
    
    return InkWell(
      onTap: () {
        context.pushNamed(
          RouteName.chatDetail,
          pathParameters: {'userId': contact.id.toString()},
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: Colors.grey[200],
              backgroundImage: contact.photo != null && contact.photo!.isNotEmpty
                  ? NetworkImage(contact.photo!)
                  : null,
              child: contact.photo == null || contact.photo!.isEmpty
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
                    contact.name ?? '-',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.mainText,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    contact.lastChat ?? '',
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
              _formatTime(contact.lastChatDate ?? ''),
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.secondaryText,
              ),
            ),
          ],
        ),
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
