import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/activity/domain/entities/exam_entity.dart';
import 'package:gaia/features/activity/presentation/widgets/exam_card.dart';

class SubjectExamContentWidget extends StatelessWidget {
  const SubjectExamContentWidget({super.key});

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
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      children: [
        ExamCard(entity: entity),
        ExamCard(entity: entity),
        ExamCard(entity: entity),
        ExamCard(entity: entity),
      ],
    );
  }
}
