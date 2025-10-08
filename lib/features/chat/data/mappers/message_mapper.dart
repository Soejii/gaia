import 'package:gaia/features/chat/data/models/message_model.dart';
import 'package:gaia/features/chat/domain/entity/message_entity.dart';

extension MessageMapper on MessageModel {
  MessageEntity toEntity() => MessageEntity(
        type: type ?? 'receive',
        message: message ?? '',
        createdAt: DateTime.tryParse(createdAt ?? '') ?? DateTime.now(),
      );
}
