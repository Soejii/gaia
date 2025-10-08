import 'package:gaia/features/chat/domain/entity/contact_entity.dart';
import 'package:gaia/features/chat/domain/entity/message_entity.dart';
import 'package:gaia/shared/presentation/paged.dart';

class ChatDetailEntity {
  final ContactEntity? contact;
  final Paged<MessageEntity> messages;
  final bool isSendingMessage;

  const ChatDetailEntity({
    this.contact,
    required this.messages,
    this.isSendingMessage = false,
  });

  ChatDetailEntity copyWith({
    ContactEntity? contact,
    Paged<MessageEntity>? messages,
    bool? isSendingMessage,
  }) {
    return ChatDetailEntity(
      contact: contact ?? this.contact,
      messages: messages ?? this.messages,
      isSendingMessage: isSendingMessage ?? this.isSendingMessage,
    );
  }
}