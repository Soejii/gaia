import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        data: (profile) {
          final accountItems = [
            AccountInfoItem(label: 'Nama Lengkap', value: profile.name),
            AccountInfoItem(label: 'Username', value: profile.username),
            AccountInfoItem(label: 'Email', value: profile.email),
            AccountInfoItem(label: 'NIS', value: profile.nis),
            AccountInfoItem(label: 'NISN', value: profile.nisn),
            AccountInfoItem(label: 'Tempat dan Tanggal Lahir', value: '${profile.birthplace}, ${profile.birthdate}'),
            AccountInfoItem(label: 'Jenis Kelamin', value: profile.gender),
            AccountInfoItem(label: 'Agama', value: profile.religion),
            AccountInfoItem(label: 'Alamat Sesuai KTP', value: profile.address),
            AccountInfoItem(label: 'Asal Sekolah', value: profile.schoolOrigin),
          ];

          return ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            itemCount: accountItems.length,
            itemBuilder: (context, index) {
              return AccountInfoField(item: accountItems[index]);
            },
          );
        },
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
