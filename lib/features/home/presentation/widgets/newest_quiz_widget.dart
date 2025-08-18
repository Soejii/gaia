import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/activity/domain/type/exam_type.dart';
import 'package:gaia/features/activity/presentation/providers/activity_providers.dart';
import 'package:gaia/features/activity/presentation/providers/exam_controller.dart';
import 'package:gaia/features/activity/presentation/widgets/exam_error_card.dart';
import 'package:gaia/features/activity/presentation/widgets/exam_skeleton_card.dart';
import 'package:gaia/features/home/presentation/widgets/quiz_card.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewestQuizWidget extends ConsumerWidget {
  const NewestQuizWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizAsync = ref.watch(examControllerProvider(ExamType.quiz));
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Quiz Tebaru',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainText,
                ),
              ),
              TextButton(
                onPressed: () {
                  ref.read(activityTabIndexProvider.notifier).set(1);
                  context.goNamed('activity');
                },
                child: Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainColorSidigs,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          quizAsync.when(
            data: (data) => data.items.isNotEmpty
                ? QuizCard(entity: data.items[0])
                : const SizedBox.shrink(),
            error: (e, _) => ExamErrorCard(
              error: e,
              onRetry: () => ref.invalidate(examControllerProvider),
            ),
            loading: () => const ExamSkeletonCard(),
          ),
        ],
      ),
    );
  }
}
