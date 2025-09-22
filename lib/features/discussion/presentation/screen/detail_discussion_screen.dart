import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/discussion/presentation/widgets/comment_card.dart';
import 'package:gaia/features/discussion/presentation/widgets/discussion_card.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';

class DetailDiscussionScreen extends StatelessWidget {
  const DetailDiscussionScreen({super.key, required this.idDiscussion});
  final int idDiscussion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBarWidget(
        title: 'Detail Postingan',
        leadingIcon: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 24.h),
          // const DiscussionCard(isDetail: true),
          SizedBox(height: 10.h),
          // ListView.separated(
          //   shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   itemCount: 4,
          //   itemBuilder: (context, index) => const CommentCard(),
          //   separatorBuilder: (context, index) => SizedBox(height: 10.h),
          // ),
        ],
      ),
    );
  }
}
