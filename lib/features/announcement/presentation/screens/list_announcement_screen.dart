import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/announcement/presentation/providers/announcement_controller.dart';
import 'package:gaia/features/announcement/presentation/widgets/announcement_card.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';

class ListAnnouncementScreen extends ConsumerWidget {
  const ListAnnouncementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final announcementAsync = ref.watch(announcementControllerProvider);
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Pengumuman Sekolah',
        leadingIcon: true,
      ),
      body: announcementAsync.when(
        data: (data) {
          if (data.isNotEmpty) {
            return ListView.builder(
              itemCount: data.length,
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) => AnnouncementCard(
                entity: data[index],
              ),
            );
          } else {
            return Center(
              child: Text(
                'Wah Pengumuman Tidak Ditemukan',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondaryText,
                ),
              ),
            );
          }
        },
        error: (error, stackTrace) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100.h,
              ),
              const Center(
                child: Text(
                  'Terjadi Kesalahan, Silahkan Coba Lagi',
                ),
              )
            ],
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
