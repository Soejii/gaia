import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gaia/features/profile/domain/entities/school_entity.dart';

part 'login_entity.freezed.dart';

@freezed
class LoginEntity with _$LoginEntity {
  const factory LoginEntity({
    required String token,
    required String type,
    required String expiresIn,
    SchoolEntity? schoolEntity,
  }) = _LoginEntity;
}
