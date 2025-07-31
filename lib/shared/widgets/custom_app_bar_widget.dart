import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final bool leadingIcon;

  const CustomAppBarWidget(
      {Key? key,
      required this.title,
      required this.leadingIcon,
      Widget? bottom})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(37, 119, 195, 0.15), // same RGBA
            offset: Offset(0, 10), // x = 0, y = 10
            blurRadius: 20, // blur amount
            spreadRadius: 0, // spread
          )
        ],
      ),
      child: AppBar(
        scrolledUnderElevation: 0.0,
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.mainColorSidigs,
        centerTitle: false,
        leading: leadingIcon
            ? IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: AppColors.mainText,
                ),
                onPressed: () {
                  context.pop();
                },
              )
            : null,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
