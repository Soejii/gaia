import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';
import 'package:gaia/features/school/presentation/providers/school_controller.dart';
import 'package:gaia/features/school/presentation/widgets/school_information_content.dart';
import 'package:gaia/features/school/presentation/widgets/school_loading_widget.dart';
import 'package:gaia/features/school/presentation/widgets/school_error_widget.dart';

class SchoolInformationScreen extends ConsumerWidget {
  const SchoolInformationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schoolAsync = ref.watch(schoolControllerProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBarWidget(
        title: 'Informasi Sekolah',
        leadingIcon: true,
      ),
      body: schoolAsync.when(
        data: (school) => SchoolInformationContent(school: school),
        loading: () => const SchoolLoadingWidget(),
        error: (error, stack) => const SchoolErrorWidget(),
      ),
    );
  }
}
