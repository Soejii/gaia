import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/activity/domain/type/exam_type.dart';
import 'package:gaia/features/activity/presentation/providers/exam_controller.dart';
import 'package:gaia/features/activity/presentation/widgets/exam_card.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExamContentWidget extends HookConsumerWidget {
  const ExamContentWidget({super.key, required this.type});
  final ExamType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncExam = ref.watch(examControllerProvider(type));
    final provider = ref.read(examControllerProvider(type).notifier);

    final scrollController = useScrollController();

    useEffect(() {
      void onScroll() {
        if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) {
          provider.loadMore();
        }
      }

      scrollController.addListener(
        () => onScroll(),
      );
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    return asyncExam.when(
      data: (data) {
        if (data.items.isNotEmpty) {
          return RefreshIndicator(
            onRefresh: () => ref
                .read(examControllerProvider(type).notifier)
                .refresh(),
            child: ListView.separated(
              controller: scrollController,
              itemCount: data.items.length + (data.isMoreLoading ? 1 : 0),
              itemBuilder: (context, i) {
                if (i >= data.items.length) {
                  return const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                final item = data.items[i];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ExamCard(entity: item),
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 20.h),
            ),
          );
        } else {
          return const Center(child: Text('Tidak ada edutainment'));
        }
      },
      error: (error, stackTrace) => Text('Terjadi Kesalahan, $error'),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
