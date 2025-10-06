import 'package:gaia/features/chat/domain/entities/chat_entity.dart';
import 'package:gaia/features/chat/domain/entities/contact_entity.dart';
import 'package:gaia/features/chat/domain/entities/message_entity.dart';
import 'package:gaia/shared/core/types/result.dart';

abstract class ChatRepository {
  Future<Result<List<ChatEntity>>> getListChats(int page);
  Future<Result<List<ContactEntity>>> getContacts(String role, int page);
  Future<Result<({ContactEntity user, List<MessageEntity> messages})>> getMessages(
    int userId,
    int page,
  );
}