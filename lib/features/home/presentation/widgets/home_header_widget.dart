import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/home/presentation/widgets/header_background.dart';
import 'package:gaia/features/home/presentation/widgets/quick_home_grid.dart';
import 'package:gaia/features/home/presentation/widgets/school_avatar_widget.dart';
import 'package:gaia/features/home/presentation/widgets/user_avatar_widget.dart';
import 'package:gaia/features/home/presentation/widgets/user_info_column.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340.h,
      child: Stack(
        children: [
          const HeaderBackground(),
          Positioned(
            top: 25,
            left: 25.w,
            child: Text(
              'Selamat Datang',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          const UserAvatarWidget(imgurl: ''),
          const UserInfoColumn(),
          const SchoolAvatarWidget(imgUrl: ''),
          const QuickHomeGrid(),
        ],
      ),
    );
  }
}
