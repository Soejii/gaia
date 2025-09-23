import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/discussion/presentation/providers/detail_discussion_controller.dart';
import 'package:gaia/features/discussion/presentation/widgets/comment_card.dart';
import 'package:gaia/features/discussion/presentation/widgets/discussion_card.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';

class DetailDiscussionScreen extends ConsumerWidget {
  const DetailDiscussionScreen({super.key, required this.idDiscussion});
  final int idDiscussion;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncDetail =
        ref.watch(detailDiscussionControllerProvider(idDiscussion));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBarWidget(
        title: 'Detail Postingan',
        leadingIcon: true,
      ),
      body: asyncDetail.when(
        data: (data) => ListView(
          children: [
            SizedBox(height: 24.h),
            DiscussionCard(
              isDetail: true,
              entity: data.poster,
            ),
            SizedBox(height: 10.h),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: data.comments?.length ?? 0,
              itemBuilder: (context, index) => CommentCard(
                entity: data.comments?[index],
              ),
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
            ),
          ],
        ),
        error: (error, stackTrace) => Text('Terjadi Kesalahan, $error'),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
