import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/subject/presentation/widgets/module_card.dart';

class ModuleContentWidget extends StatelessWidget {
  const ModuleContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      children: const [
        ModuleCard(),
        ModuleCard(),
        ModuleCard(),
        ModuleCard(),
        ModuleCard(),
      ],
    );
  }
}
