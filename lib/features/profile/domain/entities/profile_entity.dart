import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_entity.freezed.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required int userId,
    required String name,
    required String className,
    required String imgUrl,
  }) = _ProfileEntity;
}
