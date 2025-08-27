import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';
import 'package:gaia/features/profile/presentation/providers/profile_controller.dart';
import 'package:gaia/features/profile/presentation/widgets/account_information_content.dart';
import 'package:gaia/shared/screens/data_not_found_screen.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class AccountInformationScreen extends ConsumerWidget {
  const AccountInformationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(profileControllerProvider);

    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Informasi Akun',
        leadingIcon: true,
      ),
      body: profileAsync.when(
        data: (profile) => AccountInformationContent(profile: profile),
        loading: () => const Center(
          child: CircularProgressIndicator(
            color: AppColors.mainColorSidigs,
          ),
        ),
        error: (error, stack) => const DataNotFoundScreen(dataType: 'Informasi Akun'),
      ),
    );
  }
}
