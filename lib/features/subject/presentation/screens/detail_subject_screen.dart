import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gaia/features/activity/domain/type/exam_type.dart';
import 'package:gaia/features/subject/presentation/providers/detail_subject_controller.dart';
import 'package:gaia/features/subject/presentation/providers/subject_providers.dart';
import 'package:gaia/features/subject/presentation/widgets/detail_subject_app_bar_skeleton.dart';
import 'package:gaia/features/subject/presentation/widgets/detail_subject_app_bar_widget.dart';
import 'package:gaia/features/subject/presentation/widgets/detail_subject_tab_bar_widget.dart';
import 'package:gaia/features/subject/presentation/widgets/discussion_content_widget.dart';
import 'package:gaia/features/subject/presentation/widgets/exam_content_widget.dart';
import 'package:gaia/features/subject/presentation/widgets/media_content_widget.dart';
import 'package:gaia/features/subject/presentation/widgets/module_content_widget.dart';
import 'package:gaia/features/subject/presentation/widgets/task_content_widget.dart';
import 'package:gaia/shared/screens/buffer_error_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailSubjectScreen extends HookConsumerWidget {
  const DetailSubjectScreen({
    super.key,
    required this.idSubject,
  });
  final int idSubject;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncSubject = ref.watch(detailSubjectControllerProvider(idSubject));

    final tabController = useTabController(
      initialLength: 6,
      initialIndex: ref.watch(detailSubjectTabIndexProvider),
    );

    ref.listen(
      detailSubjectTabIndexProvider,
      (previous, next) {
        tabController.index = next;
      },
    );

    useEffect(
      () {
        void onChange() {
          if (!tabController.indexIsChanging) {
            ref
                .read(detailSubjectTabIndexProvider.notifier)
                .set(tabController.index);
          }
        }

        tabController.addListener(
          () => onChange(),
        );
        return () => tabController.removeListener(onChange);
      },
      [tabController],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          asyncSubject.when(
            data: (data) => DetailSubjectAppBarWidget(entity: data),
            error: (error, stackTrace) => BufferErrorView(
              error: error,
              stackTrace: stackTrace,
              onRetry: () =>
                  ref.invalidate(detailSubjectControllerProvider(idSubject)),
            ),
            loading: () => const DetailSubjectAppBarSkeleton(),
          ),
          DetailSubjectTabBarWidget(
            tabController: tabController,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                ModuleContentWidget(idSubject: idSubject),
                SubjectDiscussionContentWidget(idSubject: idSubject),
                MediaContentWidget(idSubject: idSubject),
                SubjectExamContentWidget(
                  idSubject: idSubject,
                  examType: ExamType.exam,
                ),
                SubjectExamContentWidget(
                  idSubject: idSubject,
                  examType: ExamType.quiz,
                ),
                SubjectTaskContentWidget(idSubject: idSubject),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
