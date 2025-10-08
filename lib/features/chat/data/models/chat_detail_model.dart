import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gaia/features/chat/data/models/contact_model.dart';
import 'package:gaia/features/chat/data/models/message_model.dart';

part 'chat_detail_model.freezed.dart';
part 'chat_detail_model.g.dart';

@freezed
class ChatDetailModel with _$ChatDetailModel {
  const factory ChatDetailModel({
    ContactModel? contact,
    @Default([]) List<MessageModel> messages,
    @Default(1) int page,
    @Default(false) bool hasMore,
    @Default(false) bool isSendingMessage,
  }) = _ChatDetailModel;

  factory ChatDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ChatDetailModelFromJson(json);
}