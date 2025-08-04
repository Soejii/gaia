import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gaia/features/profile/domain/entities/school_entity.dart';

part 'school_model.freezed.dart';
part 'school_model.g.dart';

@freezed
class SchoolModel with _$SchoolModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SchoolModel({
    required int id,
    String? name,
    String? photo,
    String? address,
    String? phone,
    String? email,
    String? website,
    String? facebook,
    String? instagram,
    String? youtube,
    String? description,
    String? registrationNumber,
  }) = _SchoolModel;

  factory SchoolModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolModelFromJson(json);
}

extension SchoolEntityMapper on SchoolModel {
  SchoolEntity toEntity() => SchoolEntity(
        id: id,
        name: name ?? '-',
        address: address ?? '-',
        description: description ?? '-',
        email: email ?? '-',
        facebook: facebook ?? '-',
        instagram: instagram ?? '-',
        phone: phone ?? '-',
        photo: photo ?? '-',
        registrationNumber: registrationNumber ?? '-',
        website: website ?? '-',
        youtube: youtube ?? '-',
      );
}
