import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/chat/domain/entity/chat_contact_entity.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class ChatContactListItem extends StatelessWidget {
  final ChatContactEntity contact;
  final VoidCallback? onTap;

  const ChatContactListItem({
    super.key,
    required this.contact,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24.r,
              backgroundColor: Colors.grey[200],
              backgroundImage:
                  contact.photo != null && contact.photo!.isNotEmpty
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
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    contact.className ?? '-',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryText,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
