import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/profile/domain/entities/account_entity.dart';
import 'package:gaia/features/profile/presentation/widgets/account_info_section.dart';

class AccountInformationContent extends StatelessWidget {
  final AccountEntity account;

  const AccountInformationContent({
    super.key,
    required this.account,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 49),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AccountInfoSection(
                  label: 'Nama Lengkap',
                  value: account.name,
                ),
                SizedBox(height: 16.h),
                AccountInfoSection(
                  label: 'Username',
                  value: account.username,
                ),
                SizedBox(height: 16.h),
                AccountInfoSection(
                  label: 'Email',
                  value: account.email,
                ),
                SizedBox(height: 16.h),
                AccountInfoSection(
                  label: 'NIS',
                  value: account.nis,
                ),
                SizedBox(height: 16.h),
                AccountInfoSection(
                  label: 'NISN',
                  value: account.nisn,
                ),
                SizedBox(height: 16.h),
                AccountInfoSection(
                  label: 'Tempat & Tanggal Lahir',
                  value:
                      _formatBirthInfo(account.birthplace, account.birthdate),
                ),
                SizedBox(height: 16.h),
                AccountInfoSection(
                  label: 'Jenis Kelamin',
                  value: _formatGender(account.gender),
                ),
                SizedBox(height: 16.h),
                AccountInfoSection(
                  label: 'Agama',
                  value: _formatReligion(account.religion),
                ),
               SizedBox(height: 16.h),
                AccountInfoSection(
                  label: 'Alamat Sesuai KTP',
                  value: _formatFullAddress(account),
                ),
                SizedBox(height: 16.h),
                AccountInfoSection(
                  label: 'Asal Sekolah',
                  value: account.schoolOrigin,
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatBirthInfo(String birthplace, String birthdate) {
    if (birthplace.isEmpty || birthplace == '-') {
      return birthdate.isEmpty || birthdate == '-' ? '-' : birthdate;
    }
    if (birthdate.isEmpty || birthdate == '-') {
      return birthplace;
    }
    return '$birthplace, $birthdate';
  }

  String _formatGender(String gender) {
    switch (gender.toLowerCase()) {
      case 'male':
      case 'laki-laki':
      case 'l':
        return 'Laki-laki';
      case 'female':
      case 'perempuan':
      case 'p':
        return 'Perempuan';
      default:
        return gender.isEmpty || gender == '-' ? '-' : gender;
    }
  }

  String _formatReligion(String religion) {
    switch (religion.toLowerCase()) {
      case 'islam':
        return 'Islam';
      case 'kristen':
        return 'Kristen';
      case 'katolik':
        return 'Katolik';
      case 'hindu':
        return 'Hindu';
      case 'buddha':
        return 'Buddha';
      case 'konghucu':
        return 'Konghucu';
      default:
        return religion.isEmpty || religion == '-' ? '-' : religion;
    }
  }

  String _formatFullAddress(AccountEntity account) {
    List<String> addressParts = [];

    if (account.address.isNotEmpty && account.address != '-') {
      addressParts.add(account.address);
    }

    if (account.rt.isNotEmpty && account.rt != '-') {
      addressParts.add('RT ${account.rt}');
    }

    if (account.rw.isNotEmpty && account.rw != '-') {
      addressParts.add('RW ${account.rw}');
    }

    if (account.dusun.isNotEmpty && account.dusun != '-') {
      addressParts.add('Dusun ${account.dusun}');
    }

    if (account.kelurahan.isNotEmpty && account.kelurahan != '-') {
      addressParts.add('Kel. ${account.kelurahan}');
    }

    if (account.kecamatan.isNotEmpty && account.kecamatan != '-') {
      addressParts.add('Kec. ${account.kecamatan}');
    }

    if (account.codePos.isNotEmpty && account.codePos != '-') {
      addressParts.add(account.codePos);
    }

    return addressParts.isEmpty ? '-' : addressParts.join(' ');
  }
}
