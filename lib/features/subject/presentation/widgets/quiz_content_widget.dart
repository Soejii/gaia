import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/activity/domain/entities/exam_entity.dart';
import 'package:gaia/features/activity/presentation/widgets/quiz_card.dart';

class SubjectQuizContentWidget extends StatelessWidget {
  const SubjectQuizContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final entity = ExamEntity(
      id: 1,
      subjectName: 'B.Inggris',
      title: 'Ini Tugas B.Inggris',
      date: '24-11-2025',
      status: ExamStatus.done,
      score: 100,
    );
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      itemCount: 4,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: QuizCard(entity: entity),
      ),
      separatorBuilder: (context, index) => SizedBox(height: 12.h),
    );
  }
}