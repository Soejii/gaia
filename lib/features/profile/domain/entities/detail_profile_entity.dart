import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_profile_entity.freezed.dart';

@freezed
class DetailProfileEntity with _$DetailProfileEntity {
  const factory DetailProfileEntity({
    required String name,
    required String username,
    required String email,
    required String nis,
    required String nisn,
    required String birthDate,
    required String birthPlace,
    required String gender,
    required String religion,
    required String address,
    required String schoolName,
  }) = _DetailProfileEntity;
}
