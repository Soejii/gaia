import 'package:flutter/material.dart';
import 'package:gaia/features/subject/presentation/widgets/quick_subject_button.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseSubjectScreen extends StatelessWidget {
  const ChooseSubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Pilih Mata Pelajaran',
        leadingIcon: true,
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        itemCount: 16,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.w,
          childAspectRatio: 0.82,
        ),
        itemBuilder: (context, index) => const QuickSubjectButton(),
      ),
    );
  }
}
