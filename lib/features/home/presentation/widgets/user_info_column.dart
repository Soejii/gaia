import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInfoColumn extends StatelessWidget {
  const UserInfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
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
            'RAFI MAHADIKA SUJIANTO',
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
            'SMK TELKOM MALANG',
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
