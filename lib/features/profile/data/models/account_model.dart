import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
class AccountModel with _$AccountModel {
  const factory AccountModel({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "nis") String? nis,
    @JsonKey(name: "nisn") String? nisn,
    @JsonKey(name: "birthplace") String? birthplace,
    @JsonKey(name: "birthdate") String? birthdate,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "religion") String? religion,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "rt") String? rt,
    @JsonKey(name: "rw") String? rw,
    @JsonKey(name: "dusun") String? dusun,
    @JsonKey(name: "kelurahan") String? kelurahan,
    @JsonKey(name: "kecamatan") String? kecamatan,
    @JsonKey(name: "code_pos") String? codePos,
    @JsonKey(name: "school_origin") String? schoolOrigin,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
}
