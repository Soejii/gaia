import 'package:gaia/features/chat/domain/entities/chat_entity.dart';
import 'package:gaia/features/chat/domain/entities/contact_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

abstract class ChatRepository {
  Future<Result<List<ChatEntity>>> getListChats({int page = 1});
  Future<Result<List<ContactEntity>>> getContacts({int page = 1});
}