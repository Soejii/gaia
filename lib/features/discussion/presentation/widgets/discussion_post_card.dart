import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/discussion/presentation/widgets/comment_card.dart';
import 'package:gaia/features/discussion/presentation/widgets/discussion_card.dart';

class DiscussionPostCard extends StatelessWidget {
  const DiscussionPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DiscussionCard(isDetail: false),
        SizedBox(height: 10.h),
        const CommentCard(),
      ],
    );
  }
}
