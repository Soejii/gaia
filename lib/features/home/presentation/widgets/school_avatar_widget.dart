import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/school/presentation/providers/school_controller.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SchoolAvatarWidget extends ConsumerWidget {
  const SchoolAvatarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schoolInfo = ref.watch(schoolControllerProvider);

    final imgUrl = schoolInfo.when(
      data: (data) => data.fold(
        (err) => '',
        (data) => data.photo ?? '',
      ),
      error: (error, stackTrace) => '',
      loading: () => '',
    );

    return Positioned(
      right: 25.w,
      top: 75,
      child: SizedBox(
        height: 56.h,
        width: 56.h,
        child: CircleAvatar(
          foregroundImage: NetworkImage(
            imgUrl,
          ),
          backgroundImage: AssetImage(
            AssetsHelper.imgProfilePlaceholder,
          ),
        ),
      ),
    );
  }
}
