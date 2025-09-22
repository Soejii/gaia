import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/discussion/presentation/widgets/discussion_post_card.dart';
import 'package:gaia/features/home/presentation/widgets/divider_card.dart';
import 'package:gaia/features/discussion/presentation/widgets/create_discussion_card.dart';
import 'package:gaia/features/subject/presentation/providers/discussion_subject_controller.dart';
import 'package:gaia/shared/screens/data_not_found_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SubjectDiscussionContentWidget extends ConsumerWidget {
  const SubjectDiscussionContentWidget({super.key, required this.idSubject});
  final int idSubject;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncDiscuss =
        ref.watch(discussionSubjectControllerProvider(idSubject));
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      children: [
        const CreateDiscussionCard(),
        SizedBox(height: 16.h),
        const DividerCard(),
        asyncDiscuss.when(
          data: (data) {
            if (data.isNotEmpty) {
              return ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: DiscussionPostCard(
                    entity: data[index],
                  ),
                ),
                separatorBuilder: (context, index) => const DividerCard(),
              );
            }

            {
              return const DataNotFoundScreen(dataType: 'Diskusi Kelas');
            }
          },
          error: (error, stackTrace) => Text('Terjadi Kesalahan, $error'),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ],
    );
  }
}
