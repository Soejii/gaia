import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/announcement/presentation/widgets/detail_announcement_content.dart';
import 'package:gaia/features/announcement/presentation/widgets/detail_announcement_image.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';

class DetailAnnouncementScreen extends ConsumerWidget {
  const DetailAnnouncementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Detail Pengumuman',
        leadingIcon: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 30.h),
          const DetailAnnouncementImage(),
          SizedBox(height: 20.h),
          const DetailAnnouncementContent()
        ],
      ),
    );
  }
}
