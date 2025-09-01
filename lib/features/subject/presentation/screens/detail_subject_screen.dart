import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gaia/features/subject/presentation/providers/subject_providers.dart';
import 'package:gaia/features/subject/presentation/widgets/detail_subject_app_bar_widget.dart';
import 'package:gaia/features/subject/presentation/widgets/detail_subject_tab_bar_widget.dart';
import 'package:gaia/features/subject/presentation/widgets/media_content_widget.dart';
import 'package:gaia/features/subject/presentation/widgets/modul_content_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailSubjectScreen extends HookConsumerWidget {
  const DetailSubjectScreen({
    super.key,
    required this.idSubject,
  });
  final int idSubject;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          const DetailSubjectAppBarWidget(),
          DetailSubjectTabBarWidget(
            tabController: tabController,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                ModulContentWidget(),
                ModulContentWidget(),
                MediaContentWidget(),
                ModulContentWidget(),
                ModulContentWidget(),
                ModulContentWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
