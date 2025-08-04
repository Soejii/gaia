
import 'package:gaia/features/profile/data/models/school_model.dart';
import 'package:gaia/features/profile/domain/entities/school_entity.dart';

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