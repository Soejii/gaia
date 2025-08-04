import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/profile/presentation/providers/profile_controller.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SchoolAvatarWidget extends ConsumerWidget {
  const SchoolAvatarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imgUrl = ref.watch(
      profileControllerProvider.select(
        (value) => value.valueOrNull?.imgUrl,
      ),
    );
    return Positioned(
      right: 25.w,
      top: 75,
      child: SizedBox(
        height: 56.h,
        width: 56.h,
        child: CircleAvatar(
          foregroundImage: NetworkImage(
            imgUrl ?? '',
          ),
          backgroundImage: AssetImage(
            AssetsHelper.imgProfilePlaceholder,
          ),
        ),
      ),
    );
  }
}
