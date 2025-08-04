import 'package:gaia/features/profile/data/models/profile_model.dart';
import 'package:gaia/features/profile/domain/entities/profile_entity.dart';

extension ProfileModelMapper on ProfileModel {
  ProfileEntity toEntity() => ProfileEntity(
        userId: id,
        name: name ?? '-',
        className: '-',
        imgUrl: photo ?? '',
      );
}
