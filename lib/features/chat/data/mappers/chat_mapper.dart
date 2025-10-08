import 'package:gaia/features/chat/data/models/chat_model.dart';
import 'package:gaia/features/chat/domain/entity/chat_entity.dart';

extension ChatMapper on ChatModel {
  ChatEntity toEntity() => ChatEntity(
        id: userId,
        photo: photo,
        name: name,
        role: role,
        lastChat: lastChat,
        lastChatDate: lastChatDate,
      );
}
