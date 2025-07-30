import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/home/presentation/widgets/announcement_widget.dart';
import 'package:gaia/features/home/presentation/widgets/digital_magazines_card.dart';
import 'package:gaia/features/home/presentation/widgets/divider_card.dart';
import 'package:gaia/features/home/presentation/widgets/home_header_widget.dart';
import 'package:gaia/features/home/presentation/widgets/newest_exam_widget.dart';
import 'package:gaia/features/home/presentation/widgets/newest_quiz_widget.dart';
import 'package:gaia/features/home/presentation/widgets/rubric_entertainment_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const HomeHeaderWidget(),
          const DividerCard(),
          SizedBox(height: 16.h),
          const DigitalMagazinesCard(imgUrl: ''),
          SizedBox(height: 16.h),
          const AnnouncementWidget(imgUrl: ''),
          SizedBox(height: 16.h),
          const RubricEntertainmentWidget(imgUrl: ''),
          SizedBox(height: 16.h),
          const DividerCard(),
          SizedBox(height: 16.h),
          const NewestExamWidget(),
          SizedBox(height: 16.h),
          const DividerCard(),
          SizedBox(height: 16.h),
          const NewestQuizWidget(),
          SizedBox(height: 16.h),
          const DividerCard(),
          SizedBox(height: 120.h),
        ],
      ),
    );
  }
}
