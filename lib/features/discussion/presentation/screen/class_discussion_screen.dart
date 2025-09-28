import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/discussion/presentation/widgets/create_discussion_card.dart';
import 'package:gaia/shared/presentation/divider_card.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';

class ClassDiscussionScreen extends StatelessWidget {
  const ClassDiscussionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Diskusi Kelas',
        leadingIcon: true,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const CreateDiscussionCard(),
          SizedBox(height: 16.h),
          const DividerCard(),
        ],
      ),
    );
  }
}
