import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gaia/features/profile/domain/entities/profile_entity.dart';

part 'profile_model.g.dart';
part 'profile_model.freezed.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "nis")  String? nis,
    @JsonKey(name: "nisn")  String? nisn,
    @JsonKey(name: "name")  String? name,
    @JsonKey(name: "photo")  String? photo,
    @JsonKey(name: "gender")  String? gender,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

extension ProfileModelMapper on ProfileModel {
  ProfileEntity toEntity() => ProfileEntity(
        userId: id,
        name: name ?? '-',
        className: '-',
        imgUrl: photo ?? '',
      );
}
