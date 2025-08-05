import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_entity.freezed.dart';

@freezed
class SchoolEntity with _$SchoolEntity {
  const factory SchoolEntity({
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
  }) = _SchoolEntity;
}
