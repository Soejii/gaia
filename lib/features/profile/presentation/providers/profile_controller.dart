import 'package:gaia/features/profile/domain/entities/profile_entity.dart';
import 'package:gaia/features/profile/presentation/providers/profile_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'profile_controller.g.dart';

@riverpod
class ProfileController extends _$ProfileController {
  @override
  Future<ProfileEntity> build()  {
    final usecase = ref.read(getProfileProvider);
    return usecase();
  }
}
