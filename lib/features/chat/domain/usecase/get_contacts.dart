import 'package:gaia/features/chat/domain/chat_repository.dart';
import 'package:gaia/features/chat/domain/entities/contact_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

class GetContactsUsecase {
  final ChatRepository _repository;

  GetContactsUsecase(this._repository);

  Future<Result<List<ContactEntity>>> getContact(String role, int page) {
    return _repository.getContacts(role, page);
  }
}