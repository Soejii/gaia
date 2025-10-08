import 'package:gaia/features/chat/data/models/chat_detail_model.dart';
import 'package:gaia/features/chat/data/mappers/contact_mapper.dart';
import 'package:gaia/features/chat/data/mappers/message_mapper.dart';
import 'package:gaia/features/chat/domain/entity/chat_detail_entity.dart';
import 'package:gaia/shared/presentation/paged.dart';

extension ChatDetailMapper on ChatDetailModel {
  ChatDetailEntity toEntity() => ChatDetailEntity(
        contact: contact?.toEntity(),
        messages: Paged(
          items: messages.map((m) => m.toEntity()).toList(),
          page: page,
          hasMore: hasMore,
        ),
        isSendingMessage: isSendingMessage,
      );
}