import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/activity/domain/type/exam_type.dart';
import 'package:gaia/features/activity/presentation/widgets/exam_card.dart';
import 'package:gaia/features/activity/presentation/widgets/quiz_card.dart';
import 'package:gaia/features/subject/presentation/providers/exam_subject_controller.dart';
import 'package:gaia/shared/screens/data_not_found_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SubjectExamContentWidget extends ConsumerWidget {
  const SubjectExamContentWidget({
    super.key,
    required this.idSubject,
    required this.examType,
  });
  final int idSubject;
  final ExamType examType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncExam = ref.watch(
      examSubjectControllerProvider(idSubject, examType),
    );

    return asyncExam.when(
      data: (data) {
        if (data.isNotEmpty) {
          return RefreshIndicator(
            onRefresh: () => ref
                .read(
                    examSubjectControllerProvider(idSubject, examType).notifier)
                .refresh(idSubject, examType),
            child: ListView.separated(
              itemCount: data.length,
              padding: EdgeInsets.symmetric(vertical: 12.h),
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: examType == ExamType.exam
                    ? ExamCard(entity: data[index])
                    : QuizCard(entity: data[index]),
              ),
              separatorBuilder: (context, index) => SizedBox(height: 20.h),
            ),
          );
        } else {
          return DataNotFoundScreen(dataType: examType.name);
        }
      },
      error: (error, stackTrace) => Text('Terjadi Kesalahan, $error'),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
