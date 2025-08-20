class AccountEntity {
  final String name;
  final String username;
  final String email;
  final String nis;
  final String nisn;
  final String birthplace;
  final String birthdate;
  final String gender;
  final String religion;
  final String address;
  final String rt;
  final String rw;
  final String dusun;
  final String kelurahan;
  final String kecamatan;
  final String codePos;
  final String schoolOrigin;

  AccountEntity({
    required this.name,
    required this.username,
    required this.email,
    required this.nis,
    required this.nisn,
    required this.birthplace,
    required this.birthdate,
    required this.gender,
    required this.religion,
    required this.address,
    required this.rt,
    required this.rw,
    required this.dusun,
    required this.kelurahan,
    required this.kecamatan,
    required this.codePos,
    required this.schoolOrigin,
  });

  String get formattedBirthInfo => '$birthplace, $birthdate';

  String get fullAddress => 
      '$address RT $rt RW $rw Dusun $dusun Kel. $kelurahan Kec. $kecamatan $codePos';
}
