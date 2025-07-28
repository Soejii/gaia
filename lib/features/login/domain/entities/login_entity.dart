import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_entity.freezed.dart';

@freezed
class LoginEntity with _$LoginEntity {
  const factory LoginEntity({
    required String token,
    required String type,
    required String expiresIn,
  }) = _LoginEntity;
}
