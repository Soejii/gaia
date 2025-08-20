import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaia/shared/screens/data_not_found_screen.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';
import 'package:gaia/features/profile/presentation/providers/account_controller.dart';
import 'package:gaia/features/profile/presentation/widgets/account_information_content.dart';
import 'package:gaia/features/profile/presentation/widgets/account_loading_widget.dart';

class AccountInfromationScreen extends ConsumerWidget {
  const AccountInfromationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accountAsync = ref.watch(accountControllerProvider);
    
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Informasi Akun',
        leadingIcon: true,
      ),
      body: accountAsync.when(
        data: (account) => AccountInformationContent(account: account),
        loading: () => const AccountLoadingWidget(),
        error: (error, stack) => const DataNotFoundScreen(dataType: "Akun"),
      ),
    );
  }
}

