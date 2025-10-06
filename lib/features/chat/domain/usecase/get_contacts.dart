import 'package:gaia/features/chat/domain/chat_repository.dart';
import 'package:gaia/features/chat/domain/entities/contact_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

class GetContactsUsecase {
  final ChatRepository _repository;

  GetContactsUsecase(this._repository);

  Future<Result<List<ContactEntity>>> getContact({int page = 1}) {
    return _repository.getContacts(page: page);
  }
}