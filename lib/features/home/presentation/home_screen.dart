import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/home/presentation/widgets/school_card_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 20.h),
          const SchoolCardWidget()
        ],
      ),
    );
  }
}
