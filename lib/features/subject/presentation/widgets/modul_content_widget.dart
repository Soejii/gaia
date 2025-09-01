import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/subject/presentation/widgets/modul_card.dart';

class ModulContentWidget extends StatelessWidget {
  const ModulContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      children: const [
        ModulCard(),
        ModulCard(),
        ModulCard(),
        ModulCard(),
        ModulCard(),
      ],
    );
  }
}
