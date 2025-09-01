import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/activity/domain/entities/task_entity.dart';
import 'package:gaia/features/activity/presentation/widgets/task_card.dart';

class SubjectTaskContentWidget extends StatelessWidget {
  const SubjectTaskContentWidget({super.key});

   @override
  Widget build(BuildContext context) {
    final entity = TaskEntity(
      id: 1,
      subjectName: 'B.Inggris',
      title: 'Ini Tugas B.Inggris',
      date: '24-11-2025',
      status: TaskStatus.submitted,
      score: 100,
    );
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      children: [
        TaskCard(entity: entity),
        TaskCard(entity: entity),
        TaskCard(entity: entity),
        TaskCard(entity: entity),
      ],
    );
  }
}