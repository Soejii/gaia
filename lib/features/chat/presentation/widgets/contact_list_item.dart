import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/chat/domain/entities/contact_entity.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class ContactListItem extends StatelessWidget {
  final ContactEntity contact;
  final VoidCallback? onTap;

  const ContactListItem({
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
            // Avatar
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

            // Contact info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name
                  if (contact.name != null && contact.name!.isNotEmpty)
                    Text(
                      contact.name!,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.mainText,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                  if (contact.name != null && contact.name!.isNotEmpty)
                    SizedBox(height: 4.h),

                  // Class
                  if (contact.className != null &&
                      contact.className!.isNotEmpty &&
                      contact.className != '-')
                    Text(
                      contact.className!,
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
