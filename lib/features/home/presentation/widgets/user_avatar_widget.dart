import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/profile/presentation/providers/profile_controller.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';

class UserAvatarWidget extends ConsumerWidget {
  const UserAvatarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imgUrl = ref.watch(
      profileControllerProvider.select(
        (value) => value.valueOrNull?.imgUrl,
      ),
    );
    return Positioned(
      top: 75,
      left: 25.w,
      child: Container(
        height: 56,
        width: 56,
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          foregroundImage: NetworkImage(imgUrl ?? ''),
          backgroundImage: AssetImage(
            AssetsHelper.imgProfilePlaceholder,
          ),
        ),
      ),
    );
  }
}
