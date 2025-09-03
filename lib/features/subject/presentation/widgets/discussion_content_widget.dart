import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/discussion/presentation/widgets/discussion_post_card.dart';
import 'package:gaia/features/home/presentation/widgets/divider_card.dart';
import 'package:gaia/features/discussion/presentation/widgets/create_discussion_card.dart';

class SubjectDiscussionContentWidget extends StatelessWidget {
  const SubjectDiscussionContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      children: [
        const CreateDiscussionCard(),
        SizedBox(height: 16.h),
        const DividerCard(),
        ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: const DiscussionPostCard(),
          ),
          separatorBuilder: (context, index) => const DividerCard(),
        ),
      ],
    );
  }
}
