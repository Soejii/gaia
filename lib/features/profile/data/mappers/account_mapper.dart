import 'package:gaia/features/profile/domain/entities/account_entity.dart';
import 'package:gaia/features/profile/data/models/account_model.dart';

extension AccountModelMapper on AccountModel {
  AccountEntity toEntity() => AccountEntity(
        name: name ?? '-',
        username: username ?? '-',
        email: email ?? '-',
        nis: nis ?? '-',
        nisn: nisn ?? '-',
        birthplace: birthplace ?? '-',
        birthdate: birthdate ?? '-',
        gender: gender ?? '-',
        religion: religion ?? '-',
        address: address ?? '-',
        rt: rt ?? '-',
        rw: rw ?? '-',
        dusun: dusun ?? '-',
        kelurahan: kelurahan ?? '-',
        kecamatan: kecamatan ?? '-',
        codePos: codePos ?? '-',
        schoolOrigin: schoolOrigin ?? '-',
      );
}
