import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/announcement/presentation/providers/announcement_controller.dart';
import 'package:gaia/features/announcement/presentation/widgets/announcement_card.dart';
import 'package:gaia/features/announcement/presentation/widgets/announcement_error_card.dart';
import 'package:gaia/features/announcement/presentation/widgets/announcement_skeleton_card.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/infrastructure/routes/route_path.dart';
import 'package:go_router/go_router.dart';

class AnnouncementWidget extends ConsumerWidget {
  const AnnouncementWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final announcementAsync = ref.watch(announcementControllerProvider);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pengumuman',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainText,
                ),
              ),
              TextButton(
                onPressed: () {
                  context.pushNamed('list-announcement');
                },
                child: Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainColorSidigs,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          announcementAsync.when(
            data: (data) => data.isNotEmpty
                ? AnnouncementCard(entity: data[0])
                : const SizedBox.shrink(),
            error: (e, _) => AnnouncementErrorCard(
              error: e,
              onRetry: () => ref.invalidate(announcementControllerProvider),
            ),
            loading: () => const AnnouncementSkeletonCard(),
          ),
        ],
      ),
    );
  }
}
