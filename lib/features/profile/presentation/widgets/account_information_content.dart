import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/profile/domain/entities/profile_entity.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';

class AccountInformationContent extends StatelessWidget {
  final ProfileEntity profile;

  const AccountInformationContent({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> accountData = [
      {'label': 'Nama Lengkap', 'value': profile.name},
      {'label': 'Username', 'value': profile.username},
      {'label': 'Email', 'value': profile.email},
      {'label': 'NIS', 'value': profile.nis},
      {'label': 'NISN', 'value': profile.nisn},
      {'label': 'Tempat dan Tanggal Lahir', 'value': '${profile.birthplace}, ${profile.birthdate}'},
      {'label': 'Jenis Kelamin', 'value': profile.gender},
      {'label': 'Agama', 'value': profile.religion},
      {'label': 'Alamat Sesuai KTP', 'value': profile.address},
      {'label': 'Asal Sekolah', 'value': profile.schoolOrigin},
    ];

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      itemCount: accountData.length,
      itemBuilder: (context, index) {
        final data = accountData[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['label']!,
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF9F9F9),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                padding: EdgeInsets.all(20.w),
                child: Text(
                  data['value']!,
                  style: TextStyle(
                    color: AppColors.mainText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
