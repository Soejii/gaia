import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/edutainment/domain/type/edutainment_type.dart';
import 'package:gaia/features/edutainment/presentation/providers/edutainment_providers.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EdutainmentTabBarWidget extends ConsumerWidget {
  const EdutainmentTabBarWidget({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainIndex = ref.watch(edutainmentTabIndexProvider);

    return Container(
      height: 56.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: AppColors.shadow,
      ),
      child: TabBar(
        onTap: (value) =>
            ref.read(edutainmentTabIndexProvider.notifier).set(value),
        controller: tabController,
        indicator: const BoxDecoration(color: Colors.transparent),
        tabs: edutainmentTypes.asMap().entries.map(
          (e) {
            final isSelected = mainIndex == e.value.index;
            return Tab(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 28.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: isSelected ? AppColors.mainColorSidigs : Colors.white,
                  border: Border.all(
                    width: 1.w,
                    color: isSelected
                        ? Colors.transparent
                        : AppColors.mainColorSidigs,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                  child: Center(
                    child: Text(
                      e.value.name,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color:
                            isSelected ? Colors.white : AppColors.inactiveColor,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
