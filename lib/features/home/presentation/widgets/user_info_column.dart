import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/profile/presentation/providers/profile_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserInfoColumn extends ConsumerWidget {
  const UserInfoColumn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(profileControllerProvider);
    return Positioned(
      top: 75,
      left: 100.w,
      width: 180.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            // User name
            userInfo.valueOrNull?.name ?? '-',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'OpenSans',
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            // School Name
            '',
            style: TextStyle(
              fontFamily: 'OpenSans',
              color: Colors.white,
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Murid',
            style: TextStyle(
              fontFamily: 'OpenSans',
              color: Colors.white,
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
